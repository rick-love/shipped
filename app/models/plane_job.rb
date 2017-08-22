class PlaneJob < ApplicationRecord
	belongs_to :plane , required: true
	belongs_to :job , required: true
end
