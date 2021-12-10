class RecipesController < ApplicationController
  def index
    ingredients_names = params[:ingredients_names].split(',')
    ingredients_names.map!(&:downcase)
     @recipes = Recipe.joins(:ingredients).
      where(ingredients: { name: ingredients_names }).
      preload(:ingredients)
  end
end
  