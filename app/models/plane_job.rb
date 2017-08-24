class PlaneJob < ApplicationRecord
	belongs_to :plane , required: true
	belongs_to :job , required: true
	validates :job_id, :uniqueness => {:scope => :plane_id}
end
