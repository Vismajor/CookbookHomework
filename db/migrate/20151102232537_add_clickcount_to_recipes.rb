class AddClickcountToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :clickcount, :integer, :default => 0
  end
end
