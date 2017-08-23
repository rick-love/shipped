class PlanesController < ApplicationController
	def index
		@planes = Plane.all
	end 

	def new 
		@planes = Plane.new
		@planes.avatar = params[:file]
	end

	def create
		@current_user = current_user.id
		@planes = Plane.create(name: params[:plane][:name], containers: params[:plane][:containers], location: params[:plane][:location], avatar: params[:plane][:avatar], user_id: @current_user)
		redirect_to action:'index'
	end

	def destroy
		@planes = Plane.find(params[:id]).delete
		redirect_to action:'index'
	end

	def show
	end

	def edit
		@planes = Plane.find(params[:id])
	end

	def update
		@planes = Plane.find(params[:id])
		@planes.name = params[:plane][:name]
		@planes.containers = params[:plane][:containers]
		@planes.location = params[:plane][:location]
		@planes.save
		redirect_to :action => 'index'
	end
end
