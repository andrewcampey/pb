# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  schema     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ActiveRecord::Base
	has_many :users
	attr_accessible :name, :schema
	
	validates :name,  presence: true
	validates :schema,  presence: true
end
