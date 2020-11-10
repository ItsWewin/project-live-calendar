module CalendarsHelper

  def availability_class(availabilityMap, partner_id, arrangement_id)
    css_class = is_availability_published?(@availabilityMap, partner_id, arrangement_id) ? "availability published" : "availability"
    
    can_edit?(@current_user, availabilityMap, partner_id, arrangement_id) ? "#{css_class} can_eidt" : css_class
  end

  def can_edit?(current_user, availabilityMap, partner_id, arrangement_id)
    if current_user.is_partner?
      return current_user.id == partner_id
    end

    return availability_state(availabilityMap, partner_id, arrangement_id) == 'published'
  end

  def is_availability_published?(availabilityMap, partner_id, arrangement_id)
    unite_id = availability_unite_id(partner_id, arrangement_id)

    availabilityMap.present? && availabilityMap[unite_id].present? && @availabilityMap[unite_id].published?
  end

  def availability_unite_id(partner_id, arrangement_id)
    availability_unite_id = "#{partner_id}-#{arrangement_id}"
  end

  def availability_state(availabilityMap, partner_id, arrangement_id)
    unite_id = availability_unite_id(partner_id, arrangement_id)

    if availabilityMap.present? && availabilityMap[unite_id].present?
      return availabilityMap[unite_id].status
    end

    "unpublished"
  end

  def availability_content(availabilityMap, partner_id, arrangement_id)
    status = availability_state(availabilityMap, partner_id, arrangement_id)

    case status
    when 'unpublished'
      @current_user.is_partner? ? "Can Published" : "Unavailable"
    when 'published'
      @current_user.is_partner? ? "Published, Can cancel" : "Available"
    when 'cancel'
      @current_user.is_partner? ? "Canceled" : "Cancelede"
    else
      "unknown"
    end
  end

  def current_user_identify
    @current_user.is_partner? ? "Partner: #{@current_user.name}" : "Pioneer: #{@current_user.name}"
  end
end
