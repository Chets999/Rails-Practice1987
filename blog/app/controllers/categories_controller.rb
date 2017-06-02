class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def new
		@category = Category.new
		#puts @category.inspect
	end


	def create

		@category = Category.new(params[:category].permit(:name,:description))
		puts @category.inspect

		if @category.save
			redirect_to categories_path
		else
			render new_category_path
		end

	end

	def show

		

	end

	

	


end
