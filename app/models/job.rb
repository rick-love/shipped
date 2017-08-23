class Job < ApplicationRecord
	has_many :plane_jobs
	has_many :planes, :through => :plane_jobs

	mount_uploader :avatar, AvatarUploader
end
