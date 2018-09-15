class AsbabsController < ApplicationController
	def index
		# @products = Product.limit(4)
		@products = Product.order("RANDOM()").limit(4)
		@categories = Category.all
	end
end
