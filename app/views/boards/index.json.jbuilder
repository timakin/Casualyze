json.array!(@boards) do |board|
  json.extract! board, :id, :board_name
  json.url board_url(board, format: :json)
end
