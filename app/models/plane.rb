class Plane < ApplicationRecord
	belongs_to :user , required: true
	has_many :plane_jobs
	has_many :jobs, :through => :plane_jobs

	mount_uploader :avatar, AvatarUploader
end
