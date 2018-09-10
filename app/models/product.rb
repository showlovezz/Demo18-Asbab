class Product < ApplicationRecord
	validates :name, :tag, :description, :basic_price, :special_price , presence: true
end
