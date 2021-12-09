class RecipesController < ApplicationController
  def index
    ingredients_names = params[:ingredients_names].split(',')
    @recipes = Recipe.joins(:ingredients).
      where(ingredients: {name: ingredients_names })

    respond_to do |format|
      format.html
      format.json { render json: @recipes }
    end
  end
end
  