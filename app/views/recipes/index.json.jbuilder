json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :instructions, :category_id
  json.url recipe_url(recipe, format: :json)
end
