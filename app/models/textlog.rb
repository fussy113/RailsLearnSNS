class Textlog < ApplicationRecord
	# after_create_commit {BroadCastMessageJob.perform_later self}
	belongs_to :user ,class_name: "User"
	belongs_to :room ,class_name: "Room"
	has_one :imagelog , dependent: :destroy
	accepts_nested_attributes_for :imagelog
end
