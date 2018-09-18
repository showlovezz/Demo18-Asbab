class Comment < ApplicationRecord
	# 很多評論會屬於一個文章
	belongs_to :post, optional: true

	# 很多評論會屬於某一個使用者
	belongs_to :user, optional: true
end
