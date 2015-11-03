class Recipe < ActiveRecord::Base
  # has_and_belongs_to_many :ingredients
  belongs_to :categories

  has_many :quantities
  has_many :ingredients, through: :quantities
end
