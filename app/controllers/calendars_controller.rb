class CalendarsController < ApplicationController

  def index
    @arrangements = Arrangement.find_by_day("2020-11-08")
    @can_selected_day = Arrangement.get_all_days
    @partners = User.find_all_partners
    @availabilityMap = get_availability_map(@arrangements)
  end

  def day_change
    day = params[:day]
    @arrangements = Arrangement.find_by_day(day)
    @can_selected_day = Arrangement.get_all_days
    @partners = User.find_all_partners

    respond_to do |format|
      format.js
    end
  end

  private
    def get_availability_map(arrangements)
      availabilities = Availability.get_by_arrangements(arrangements)

      puts "availabilities length: #{availabilities.length}"

      availabilityMap = Hash.new

      availabilities.each do |arr|

        puts "partner_id: #{arr.partner_id}"
        puts "arrangment_idL #{arr.arrangment_id}"

        availabilityMap["#{arr.partner_id}-#{arr.arrangment_id}"] = arr
      end

      availabilityMap
    end
end
