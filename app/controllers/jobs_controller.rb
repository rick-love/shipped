class JobsController < ApplicationController
	def index
		@jobs = Job.all
		@planes = Plane.all
		@planejobs = PlaneJob.all
		@total = 0
		@final = 0
		@current_user = current_user
	end  

	def new
		@jobs = Job.new 
	end

	def create
		@jobs = Job.create(name: params[:job][:name], description: params[:job][:description], origin: params[:job][:origin], destination: params[:job][:destination], cost: params[:job][:cost] ,containers: params[:job][:containers], avatar: params[:job][:avatar])
		redirect_to action:'index'
	end

	def destroy
		@jobs = Job.find(params[:id]).delete
		redirect_to action:'index'
	end

	def show
	end

	def edit
		@jobs = Job.find(params[:id])
	end

	def update
		@jobs = Job.find(params[:id])
		@jobs.name = params[:job][:name]
		@jobs.description = params[:job][:description]
		@jobs.origin = params[:job][:origin]
		@jobs.destination = params[:job][:destination]
		@jobs.cost = params[:job][:cost]
		@jobs.containers = params[:job][:containers]
		@jobs.save
		redirect_to :action => 'index'
	end
end
