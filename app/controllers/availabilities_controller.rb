class AvailabilitiesController < ApplicationController
  before_filter :params_valid, :only => [:update]
  before_filter :request_availability, :only => [:update]
  before_filter :can_create_availability, :only => [:update]

  def create
    if @availability.present?
      return render json: {succeed: false, message: "existed!"}
    end

    begin
      create_availability_and_uplish_meetings(@partner_id, @arrangment_id)
      
      render json: {succed: true, message: 'succed'}
    rescue => ex:
      render json: {succed: false, message: ex.message}
    end
  end

  private
    def params_valid
      ids = params[:arr_id].split('-')

      if ids.length != 2
        return render json: {succed: false, message: 'unit id is invalid'}
      end

      @partner_id = ids[0]
      @arrangment_id = ids[1]

      if !Arrangement.is_existed_with_id?(@arrangment_id)
        return render json: {succed: false, message: "arrangment is no existed"}
      end

      if !User.is_partner_existed_with_id?(@partner_id)
        return render json: {succed: false, message: "partner is no existed"}
      end
    end

    def request_availability
      @availability = Availability.find_availability_by_partner_id_and_arrangemnt_id(@partner_id, @arrangment_id)
    end

    def can_create_availability()
      if !@current_user.is_partner?
        return render json: {succeed: false, message: "无权修改"}
      end

      # 合伙人
      return render json: {succed: false, message: '无权修改'} if @current_user.id.to_s != @partner_id
    end

    def create_availability_and_uplish_meetings(partner_id, arrangement_id)
      availability = Availability.find_or_initialize_by(partner_id: partner_id, arrangement_id: arrangement_id) 
      if availability.new_record? 
        availability.save!
      end

      meeting = Meeting.find_or_initialize_by(availability_id: availability.id, partner_status: Meeting::STATUS_PUBLISHED)
      if !meeting.new_record?
        raise "meeting is existed, availability_id: #{availability.id}"
      end

      meeting.save!
    end
end
