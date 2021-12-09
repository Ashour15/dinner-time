class RecipeIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  after_save :increment_ingredient_quantity

  def increment_ingredient_quantity
    self.recipe.increment!(:ingredients_count)
  end
end
