class AsbabsController < ApplicationController
	def index
		@products = Product.limit(4)
	end
end
