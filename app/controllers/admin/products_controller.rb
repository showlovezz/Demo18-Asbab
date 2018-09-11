class Admin::ProductsController < ApplicationController
	before_action :authenticate_user!
	before_action :authenticate_admin

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			flash[:notice] = "產品建立成功"
			redirect_to admin_products_path
		else
			flash.now[:alert] = "產品建立失敗"
			render :new
		end
	end

	private

	def product_params
		params.require(:product).permit(:name, :tag, :description, :basic_price, :special_price, :image)
	end
end
