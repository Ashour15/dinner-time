class RecipesController < ApplicationController
  def index
    ingredients_names = params[:ingredients_names].split(',')
    ingredients_count = ingredients_names.length
    @recipes = Recipe.where(ingredients_count: ingredients_count).
      joins(:ingredients).
      where(ingredients: {name: ingredients_names })

    respond_to do |format|
      format.html
      format.json { render json: @recipes }
    end
  end
end
  