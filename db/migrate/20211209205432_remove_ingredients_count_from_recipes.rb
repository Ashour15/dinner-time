class RemoveIngredientsCountFromRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :ingredients_count, :integer
  end
end
