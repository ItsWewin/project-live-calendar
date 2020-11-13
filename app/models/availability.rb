class Availability < ActiveRecord::Base

  STATUS_UNPUBLISHED = 'unpublish'
  STATUS_PUBLISHE = 'published'
  STATUS_CANCEL = 'cancel'

  class << self
  
    def find_availability_by_partner_id_and_arrangemnt_id(partner_id, arrangement_id)
      self.find_by(partner_id: partner_id, arrangement_id: arrangement_id)
    end

    def create_and_update_status(partner_id, arrangement_id, status)
      self.create(partner_id: partner_id, arrangement_id: arrangement_id, status: status)
      return self
    end

    def get_by_arrangements(arrangements)
      return nil if !arrangements.present?

      ids = []
      arrangements.each do |arr|
        ids.push(arr.id)
      end

      ids.uniq!

      availabilities = self.where('arrangement_id in (?)', ids)
    end

    def is_status_valid?(status)
      return status == STATUS_PUBLISHE || status == STATUS_CANCEL
    end
  end

  def update_status(status)
    if !Availability.is_status_valid?(status)
      raise "status: #{status} is invalid"
    end

    self.status = status
    self.save!
  end

  def published?
    return self.status == 'published'
  end

  def meeting
    Meeting.find_by(availability_id: self.id)
  end
end
