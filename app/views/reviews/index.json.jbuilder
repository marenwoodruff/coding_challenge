json.array!(@reviews) do |review|
  json.extract! review, :id, :rating
  json.url review_url(review, format: :json)
end