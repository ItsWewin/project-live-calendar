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
    @meetingMap = get_meeting_map(@availabilityMap)
  end

  def day_change
    day = params[:day]

    @arrangements = Arrangement.find_by_day(day)
    @can_selected_day = Arrangement.get_all_days
    @partners = User.find_all_partners
    @availabilityMap = get_availability_map(@arrangements)
    @meetingMap = get_meeting_map(@availabilityMap)
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
      meetingMap = Hash.new

      availabilities = availabilityMap.values
      
      return meetingMap if !availabilities.present?
    
      ids = availabilities.map { |a| a.id}
      meetings = Meeting.get_by_availability_ids(ids)

      
      return meetingMap if !meetings.present?

      meetings.each do |m|
        meetingMap[m.availability_id] = m
      end

      meetingMap
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
end
