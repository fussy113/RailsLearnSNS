class Room < ApplicationRecord
	belongs_to :user ,class_name: "User", foreign_key: "create_user_id"
end
