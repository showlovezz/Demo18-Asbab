class Admin::AsbabsController < ApplicationController
	before_action :authenticate_user!
	before_action :authenticate_admin

	def index
		@products = Product.all
	end
end
