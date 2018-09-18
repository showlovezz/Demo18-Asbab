class Post < ApplicationRecord
	# 文章圖片上載器
	mount_uploader :image, ImageUploader

	# 資料驗證必輸入
	validates :title, :description, presence: true

	# 一個文章會有很多評論
	has_many :comments, dependent: :destroy
end
