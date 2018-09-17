class Admin::AsbabsController < Admin::BaseController
	def index
		@products = Product.all
	end
end
