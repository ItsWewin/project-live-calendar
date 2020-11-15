class MeetingsController < ApplicationController
  before_filter :params_valid, :only => [:create_or_update, :pioneer_update_meeting]
  before_filter :request_availability, :only => [:create_or_update, :pioneer_update_meeting]
  before_filter :can_create_availability, :only => [:create_or_update]
  
  def create_or_update
    begin
      if @availability.present?
        create_or_update_meeting(@availability, @partner_id, @arrangment_id, @status)
        return render json: {succeed: true, message: "succed"}
      end

      create_availability_and_publish_meetings(@partner_id, @arrangment_id)
      
      return render json: {succeed: true, message: 'succed'}

    rescue => ex
      return render json: {succeed: false, message: ex.message}
    end
  end

  def pioneer_update_meeting
    if !@availability.present?
      return render json: {succeed: false, message: '合伙人未发布'}
    end

    # 创业者在同一时间已经有其他会议
    if @status == Meeting::STATUS_PUBLISHED &&
       @current_user.pioneer_has_another_meeting_in_this_time(@availability.arrangement_id)
      
       return render json: {succeed: false, message: "你在该时间段有约"}
    end

    begin
      ActiveRecord::Base.transaction do
        meeting = @availability.meeting
  
        if meeting.partner_status != Meeting::STATUS_PUBLISHED
          return render json: {succeed: false, message: "合伙人未发布"}
        end
    
        if meeting.pioneer_id != @current_user.id && meeting.succeed? 
          return render json: {succeed: false, message: "该时间段已经被他人预约"}
        end
  
        meeting.pioneer_id = @current_user.id
        meeting.pioneer_status = @status
  
        meeting.save!
      end

      return render json: {succeed: true, message: '预约成功'}
    rescue => ex
      return render json: {succeed: false, message: "预约失败: #{ex.message}"}
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

      @status = params[:status]

      if !Meeting.status_valid(@status)
        return render json: {succed: false, message: "status is invalid: #{@status}"}
      end

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

    def can_create_availability
      if !@current_user.is_partner?
        return render json: {succeed: false, message: "无权修改"}
      end

      # 合伙人
      return render json: {succed: false, message: '无权修改'} if @current_user.id.to_s != @partner_id
    end

    def create_availability_and_publish_meetings(partner_id, arrangement_id)
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

    def create_or_update_meeting(availability, partner_id, arrangement_id, status)
      meeting = Meeting.find_or_initialize_by(availability_id: availability.id)
      meeting.partner_status = status
      meeting.save!
    end
end