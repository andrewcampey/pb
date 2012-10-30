class People < ActiveRecord::Base
	belongs_to :organisation
	
	attr_accessible :firstname, :lastname, :organisation_id, :email, :phone1, :phone2, :fax, :mobile, :healthfund, :fundnumber, :referee, :localmedicalofficer, :comments, :address1line1, :address1line2, :address1line3, :address1suburb, :address1postcode, :address1country, :address2line1, :address2line2, :address2line3, :address2suburb, :address2postcode, :address2country, :created_at, :updated_at
	
	validates :firstname,  presence: true
	validates :lastname,  presence: true
	validates :email,  presence: true
end
