class PublicController < ApplicationController
  def index
  end

  def signup
	@user = User.new
  end
  
  	def create
		@company = Company.new(params[:company])
		@company.save
		
		p = params[:user]
		p[:company_id] = @company.id
		@user = User.new(p)
		
		@user.save
		Apartment::Database.create(@company.schema)
	end
end
