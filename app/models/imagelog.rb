class Imagelog < ApplicationRecord
	belongs_to :textlog ,class_name: "Textlog"
end
