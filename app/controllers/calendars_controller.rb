class CalendarsController < ApplicationController
  before_filter :request_login

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
end
