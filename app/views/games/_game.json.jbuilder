json.extract! game, :id, :Game_Title, :Release_Date, :Description, :Publisher, :created_at, :updated_at
json.url game_url(game, format: :json)
