class ProductsController < ApplicationController
	def index
		@products = Product.all
	end
	def show
		@product = Product.find(params[:id])
	end
	def edit
		@product = Product.find(params[:id])
	end
	def update
		@product= Product.find(params[:id])
		if @product.update(params[:product].permit(:name, :description, :rating, :inmport_on, :price))
			redirect_to @product
		else
			render:edit
		end
	end
	def create
		product_params = params.require(:product).permit(:name, :description, :rating, :inmport_on, :price)
		@product = Product.new(product_params)
		@product.save
		redirect_to @product
	end
end
