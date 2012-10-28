class User < ActiveRecord::Base
	belongs_to :organisation
	
	attr_accessible :email, :firstname, :lastname, :password, :password_confirmation, :remember_token, :organisation_id
	has_secure_password

	before_save :create_remember_token

	validates :firstname,  presence: true
	validates :lastname,  presence: true
	validates :organisation_id,  presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence:   true,
					format:     { with: VALID_EMAIL_REGEX },
					uniqueness: { case_sensitive: false }
	validates :password, presence: true, length: { minimum: 6 }
	validates :password_confirmation, presence: true

	private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
