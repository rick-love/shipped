class PlaneJobsController < ApplicationController


	def new 
		@current_user = current_user
		puts "hello!!!!!!!!!!!!"
		@planes = @current_user.planes
		puts @current_user.planes
		puts Plane.all
		puts "hello!!!!!!!!!!!!"
		@job = Job.find(params[:venue_id])
		@planeJob = PlaneJob.all
		
	end

	def create
		@planeJob = PlaneJob.create(job_id: params[:planeJob][:job_id], plane_id: params[:planeJob][:plane_id])
		redirect_to controller: 'jobs', action:'index'
	end

	def destroy
	end

	def show
	end

	def edit
		
	end

	def update
	end

end
