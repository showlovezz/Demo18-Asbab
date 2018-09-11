class Product < ApplicationRecord
	# 資料驗證必輸入
	validates :name, :tag, :description, :basic_price, :special_price , presence: true

	# 產品檔案下載器
	mount_uploader :image, PhotoUploader

	# 很多產品會屬於一個分類
	belongs_to :category, optional: true
end
