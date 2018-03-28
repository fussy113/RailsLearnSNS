class Imagelog < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :textlog ,class_name: "Textlog"
end
