json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :recipe_id, :type
  json.url ingredient_url(ingredient, format: :json)
end
