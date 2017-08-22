class UsersController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)

		if @user.save
			redirect_to :back, notice : "User has been created"
		else
			render :new
	end
end