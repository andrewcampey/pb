class PublicController < ApplicationController
  def index
  end

  def signup
	@user = User.new
  end
  
  	def create
		@organisation = Organisation.new(params[:organisation])
		@organisation.save
		
		p = params[:user]
		p[:organisation_id] = @organisation.id
		@user = User.new(p)
		
		@user.save
		Apartment::Database.create(@organisation.schema)
	end
end
