class User < ActiveRecord::Base

  class << self
    ROLE_PARTNER = 'partner'
    ROLE_PIONEER = 'pioneer'

    def find_all_partners
      self.where('role = ?', 'partner')
    end

    def is_partner_existed_with_id?(id)
      self.find_by(id: id, role: ROLE_PARTNER).present?
    end
  end
end
