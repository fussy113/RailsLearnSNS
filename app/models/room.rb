class Room < ApplicationRecord
	belongs_to :user ,class_name: "User" ,optional: true
	has_many :textlogs ,dependent: :destroy
end
