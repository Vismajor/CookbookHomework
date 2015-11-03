class AddClickcountToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :clickcount, :integer
    change_column_default :recipes, :clickcount, :integer, :default => 0
  end
end
