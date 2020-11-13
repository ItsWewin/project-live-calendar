class Meeting < ActiveRecord::Base
  STATUS_PUBLISHED = "published"
  STATUS_UNPUBLISHED = "unpublish"
  
  class << self
    def create_or_partner_republish(availability_id)
      meeting = self.find_or_initialize_by(availability_id: availability_id)
      meeting.pioneer_id = 0
      meeting.partner_status = STATUS_PUBLISHED
      meeting.pioneer_status = STATUS_UNPUBLISHED
      meeting.save!
      meeting
    end

    def status_valid(status)
      return status == STATUS_PUBLISHED || status == STATUS_UNPUBLISHED
    end

    def get_by_availability_ids(ids)
      self.where('availability_id in (?)', ids)
    end
  end

  def succeed?
    return self.partner_status == STATUS_PUBLISHED && pioneer_status == STATUS_PUBLISHED
  end
end