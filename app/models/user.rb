class User < ActiveRecord::Base
  
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  ROLE_PARTNER = 'partner'.freeze
  ROLE_PIONEER = 'pioneer'.freeze

  class << self
  
    def find_all_partners
      self.where('role = ?', 'partner')
    end

    def find_by_user_name(name)
      self.find_by(name: name)
    end

    def is_partner_existed_with_id?(id)
      self.find_by(id: id, role: ROLE_PARTNER).present?
    end
  end

  def is_partner?
    return self.role === ROLE_PARTNER
  end

  def is_pioneer?
    return self.role === ROLE_PIONEER
  end
end
