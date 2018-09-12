class Category < ApplicationRecord
	# 一個分類底下有很多產品
	has_many :products, dependent: :destroy

	# 資料驗證必輸入
	validates :name, presence: true
end
