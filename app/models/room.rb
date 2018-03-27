class Room < ApplicationRecord
	belongs_to :user ,class_name: "User"
	has_many :textlogs ,dependent: :destroy
end
