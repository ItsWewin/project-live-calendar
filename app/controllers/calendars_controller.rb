class CalendarsController < ApplicationController
  before_filter :http_basic_auth, :except => [:need_refresh]
  before_filter :current_user, :except => [:need_refresh]
  before_filter :request_login, :except => [:need_refresh]
  after_filter :date_refreshed_mark

  def index
    start_time = Time.now.to_date.strftime("%Y-%m-%d")

    @arrangements = Arrangement.find_by_day(start_time)
    @can_selected_day = Arrangement.get_all_days
    @partners = User.find_all_partners
    @availabilityMap = get_availability_map(@arrangements)
    @meetingAndAvailabilityIDMap, @meetingAndArrangementIDMap  = get_meeting_map(@availabilityMap)
    @pioneerUserIDMap = get_pioneer_user_map(@meetingAndAvailabilityIDMap)
  end

  def day_change
    day = params[:day]

    @arrangements = Arrangement.find_by_day(day)
    @can_selected_day = Arrangement.get_all_days
    @partners = User.find_all_partners
    @availabilityMap = get_availability_map(@arrangements)
    @meetingAndAvailabilityIDMap, @meetingAndArrangementIDMap  = get_meeting_map(@availabilityMap)
    @pioneerUserIDMap = get_pioneer_user_map(@meetingAndAvailabilityIDMap)

    respond_to do |format|
      format.js
    end
  end

  def need_refresh
    @user_id = params[:user_id]
    if !@user_id.present?
      return render json: {succeed: false, message: "user id is invalid"}
    end

    update_marks = MyRedis.get(Meeting::DATA_CHANGE_KEY)
    if update_marks.present?
      cache_data = JSON.parse(update_marks)
      if cache_data["data:fresh:user.id-#{@user_id}"]
        return render json: {succeed: false, message: "all data is refreshed"}
      end
    end

    return render json: {succeed: true, message: "need refreshed"}
  end

  private
    def get_availability_map(arrangements)
      availabilities = Availability.get_by_arrangements(arrangements)

      availabilityMap = Hash.new

      return availabilityMap if !availabilities.present?

      availabilities.each do |arr|
        availabilityMap["#{arr.partner_id}-#{arr.arrangement_id}"] = arr
      end

      availabilityMap
    end

    def get_meeting_map(availabilityMap)
      meetingAndAvailabilityIDMap = Hash.new
      meetingAndArrangementIDMap = Hash.new

      availabilities = availabilityMap.values
      
      return [meetingAndAvailabilityIDMap, meetingAndArrangementIDMap] if !availabilities.present?

      ids = availabilities.map { |a| a.id}
      meetings = Meeting.get_by_availability_ids(ids)

      availabilityIDMap = Hash.new
      ids = availabilities.each { |a| availabilityIDMap[a.id] = a }
      
      return [meetingAndAvailabilityIDMap, meetingAndArrangementIDMap]if !meetings.present?

      meetings.each do |m|
        meetingAndAvailabilityIDMap[m.availability_id] = m

        arrangement_id = availabilityIDMap[m.availability_id].arrangement_id
        if meetingAndArrangementIDMap[arrangement_id].present?
          meetingAndArrangementIDMap[arrangement_id] << m
        else
          meetingAndArrangementIDMap[arrangement_id] = [m]
        end
      end

      [meetingAndAvailabilityIDMap, meetingAndArrangementIDMap]
    end

    def date_refreshed_mark
      cache_data = Hash.new

      update_marks = MyRedis.get(Meeting::DATA_CHANGE_KEY)
      if update_marks.present?
        cache_data = JSON.parse(update_marks)
      end

      cache_key = "data:fresh:user.id-#{@user_id}"
      cache_data[cache_key] = true
      
      MyRedis.set(Meeting::DATA_CHANGE_KEY, cache_data.to_json)
    end

    def get_pioneer_user_map(meetingMap)
      userIDMap = Hash.new

      meetings = meetingMap.values
      return userIDMap if !meetings.present?

      pioneer_ids = meetings.map {|m| m.pioneer_id}

      users = User.where('id in (?)', pioneer_ids)

      userIDMap = Hash.new
      users.each {|u| userIDMap[u.id] = u}

      userIDMap
    end
end
