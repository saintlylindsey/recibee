class RecipesController < ApplicationController

	def index
		@recipes=Recipe.all
	end 

	def new
		@recipe=Recipe.new
	end

	def create
		@recipe = Recipe.new(recipe_params)
		if @recipe.save
			redirect_to new_recipe_cookingstep_path(@recipe)
	 	else
	 		render :action => :new
	 	end
	end

	def show
		@recipe=Recipe.find(params[:recipe_id])
		@cookingsteps=@recipe.cookingsteps
	end 
	
	protected
	
	def recipe_params
		params.require(:recipe).permit(:name, :description)
	end


end
