class CalendarsController < ApplicationController
  before_filter :request_login

  def index
    start_time = Time.now.to_date.strftime("%Y-%m-%d")

    @arrangements = Arrangement.find_by_day(start_time)
    @can_selected_day = Arrangement.get_all_days
    @partners = User.find_all_partners
    @availabilityMap = get_availability_map(@arrangements)
  end

  def day_change
    day = params[:day]
    @arrangements = Arrangement.find_by_day(day)
    @can_selected_day = Arrangement.get_all_days
    @partners = User.find_all_partners
    @availabilityMap = get_availability_map(@arrangements)

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
end
