json.array!(@superheroes) do |superhero|
  json.extract! superhero, :id, :real_name, :hero_name
  json.url superhero_url(superhero, format: :json)
end
