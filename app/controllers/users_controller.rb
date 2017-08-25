class UsersController < ApplicationController
	def index
		@user = User.all
		@planes = Plane.all
		@PlaneJobs = PlaneJob.all
		@jobs = Job.all
		@costTotal = 0
		
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)

		if @user.save
			redirect_to :back, notice: "User has been created"
		else
			render :new
		end
	end

	def show
		
		redirect_to action:'index'
	end

	def destroy
	end
end