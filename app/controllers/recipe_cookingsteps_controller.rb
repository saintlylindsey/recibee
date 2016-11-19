class RecipeCookingstepsController < ApplicationController
	
	before_action :set_recipe

	def index
 		@cookingsteps = @recipe.cookingsteps
 	end

 	def new
 		@cookingsteps = Cookingstep.new
 	end

 	def create
		@cookingsteps = Cookingstep.new(cookingsteps_params)
		@recipe_id = @recipe.id
		if @cookingsteps.save
			flash[:notice]="Post was successfully created"
			redirect_to recipes_path
		else 
			flash[:notice]="Post was not saved. Please retry."
			render :action => :new

		end
	end

 	protected 

 	def set_recipe
 		@recipe=Recipe.find(params[:recipe_id])
 	end

 	def cookingsteps_params
		params.require(:cookingstep).permit(:number, :step, :recipe_id => [])
	end

end
