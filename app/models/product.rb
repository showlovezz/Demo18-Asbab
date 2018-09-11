class Product < ApplicationRecord
	validates :name, :tag, :description, :basic_price, :special_price , presence: true

	mount_uploader :image, PhotoUploader
end
