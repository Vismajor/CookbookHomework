class Recipe < ActiveRecord::Base
  # has_and_belongs_to_many :ingredients
  belongs_to :category

  has_many :quantities
  has_many :ingredients, through: :quantities

  def self.most_popular
    all.order("clickcount DESC").first
  end


  def increment_clickcount()
    if !self.clickcount
      self.clickcount = 0
    end
    # self.clickcount ||= 0
    self.clickcount += 1
    save
  end
end
