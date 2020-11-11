class AvailabilitiesController < ApplicationController
  before_filter :params_valid, :only => [:update]
  before_filter :can_edit_availability, :only => [:update]

  def update
    begin
      availability = Availability.find_availability_by_partner_id_and_arrangemnt_id(@partner_id, @arrangment_id)
      if availability.present?
        availability.update_status(@status)
      else
        Availability.create_and_update_status(@partner_id, @arrangment_id, @status)
      end

      render json: {succed: true, message: 'succed'}

    rescue => ex
      render json: {succed: false, message: ex.message}
    end
  end

  private
    def params_valid
      ids = params[:arr_id].split('-')

      @status = params[:status]

      if ids.length != 2
        return render json: {succed: false, message: 'id is invalid'}
      end

      if !Availability.is_status_valid?(@status)
        return render json: {succed: false, message: "status is invalid"}
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

    def can_edit_availability
      if @current_user.id.to_s != @partner_id
        return render json: {succed: false, message: '无权修改'}
      end
    end
end
