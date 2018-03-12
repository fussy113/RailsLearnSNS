class Imagelog < ApplicationRecord
	belongs_to :user ,class_name: "User"
	belongs_to :room ,class_name: "Room"
end
