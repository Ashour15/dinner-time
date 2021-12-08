class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :rate
      t.string :author_tip
      t.string :budget
      t.string :prep_time
      t.integer :ingredients_count

      t.timestamps
    end
  end
end
