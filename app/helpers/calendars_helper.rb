module CalendarsHelper

  def availability_class(availabilityMap, meetingMap, partner_id, arrangement_id)
    css_class = "availability"

    unite_id = availability_unite_id(partner_id, arrangement_id)

    # user is partner
    if @current_user.is_partner?
      if @current_user.id != partner_id
        return css_class
      end 

      css_class = "#{css_class} can_partner_edit"

      if !availabilityMap.present? ||
         !availabilityMap[unite_id].present? ||
         !meetingMap.present? ||
         !meetingMap[availabilityMap[unite_id].id].present?

        return css_class
      end

      partner_status = meetingMap[availabilityMap[unite_id].id].partner_status
      pioneer_status = meetingMap[availabilityMap[unite_id].id].pioneer_status

      if partner_status != "published"
        return css_class
      end

      css_class = "#{css_class} published"

      if pioneer_status != "published"
        return css_class
      end
      
      css_class = "#{css_class} meeting_succeed"

      return css_class
    end

    # user is pioneer
    if !availabilityMap.present? ||
      !availabilityMap[unite_id].present? ||
      !meetingMap.present? ||
      !meetingMap[availabilityMap[unite_id].id].present?
      
      return css_class
    end

    partner_status = meetingMap[availabilityMap[unite_id].id].partner_status
    pioneer_status = meetingMap[availabilityMap[unite_id].id].pioneer_status
    
    if partner_status != "published"
      return css_class
    end

    meetings = @meetingAndArrangementIDMap[arrangement_id]
    meetings.each do |m|
      if m.pioneer_id == @current_user.id &&
        m.pioneer_status == "published" &&
        m.partner_status == "published" &&
        m.availability_id != availabilityMap[unite_id].id

          return css_class
      end
    end

    css_class = "#{css_class} can_pioneer_edit"

    if pioneer_status != "published"
      return css_class
    end

    if meetingMap[availabilityMap[unite_id].id].pioneer_id == @current_user.id
      css_class = "#{css_class} meeting_succeed"
    else
      css_class = "availability"
    end

    return css_class
  end

  def availability_unite_id(partner_id, arrangement_id)
    availability_unite_id = "#{partner_id}-#{arrangement_id}"
  end

  def availability_content(availabilityMap, meetingMap, partner_id, arrangement_id)
    unite_id = availability_unite_id(partner_id, arrangement_id)

    if @current_user.is_partner?
      if !availabilityMap.present? ||
        !availabilityMap[unite_id].present? ||
        !meetingMap.present? ||
        !meetingMap[availabilityMap[unite_id].id].present? ||
        meetingMap[availabilityMap[unite_id].id].partner_status != "published"

        return @current_user == partner_id ? "Can Publish" : ""
      else

        if meetingMap[availabilityMap[unite_id].id].pioneer_status == "published" 
          return "预约成功"
        end

        return "已发布"
      end
    end

    if !availabilityMap.present? ||
      !availabilityMap[unite_id].present? ||
      !meetingMap.present? ||
      !meetingMap[availabilityMap[unite_id].id].present? ||
      meetingMap[availabilityMap[unite_id].id].partner_status != "published"

      return "不可预约"
    else
      meetings = @meetingAndArrangementIDMap[arrangement_id]
  
      meetings.each do |m|
        if m.pioneer_id == @current_user.id &&
          m.pioneer_status == "published" &&
          m.partner_status == "published" &&
          m.availability_id != availabilityMap[unite_id].id

            return "不可预约"
        end
      end

      if meetingMap[availabilityMap[unite_id].id].pioneer_status == "published"
        return meetingMap[availabilityMap[unite_id].id].pioneer_id == @current_user.id ? "预约成功" : "时间已占用"
      end
      
      return "可预约"
    end
  end

  def availability_status(availabilityMap, meetingMap, partner_id, arrangement_id)
    unite_id = availability_unite_id(partner_id, arrangement_id)
    
    # 合伙人
    if @current_user.is_partner?
      if !availabilityMap.present? ||
        !availabilityMap[unite_id].present? ||
        !meetingMap.present? ||
        !meetingMap[availabilityMap[unite_id].id].present?

        return "unpublish"
      else
        return meetingMap[availabilityMap[unite_id].id].partner_status
      end
    end

    # 创业者
    if !availabilityMap.present? ||
      !availabilityMap[unite_id].present? ||
      !meetingMap.present? ||
      !meetingMap[availabilityMap[unite_id].id].present?

      return "unpublish"
    else
      return meetingMap[availabilityMap[unite_id].id].pioneer_status
    end
  end

  def current_user_identify
    @current_user.is_partner? ? "合伙人：#{@current_user.name}" : "创业者：#{@current_user.name}"
  end
end
