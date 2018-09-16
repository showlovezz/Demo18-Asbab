class Post < ApplicationRecord
	# 文章圖片上載器
	mount_uploader :image, ImageUploader

	# 資料驗證必輸入
	validates :title, :description, presence: true
end
