json.extract! piece, :id, :video, :audio, :words, :caption, :created_at, :updated_at
json.url edit_piece_url(piece, format: :json)
json.url piece_url(piece, format: :json)
