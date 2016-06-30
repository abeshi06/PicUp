json.array!(@picturetests) do |picturetest|
  json.extract! picturetest, :id, :hint, :picture, :answer
  json.url picturetest_url(picturetest, format: :json)
end
