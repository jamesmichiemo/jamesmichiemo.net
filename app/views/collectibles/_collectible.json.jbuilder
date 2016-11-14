json.extract! collectible, :id, :title, :description, :image_url, :price, :created_at, :updated_at
json.url collectible_url(collectible, format: :json)