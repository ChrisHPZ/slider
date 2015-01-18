json.array!(@sliderimages) do |sliderimage|
  json.extract! sliderimage, :id, :title, :caption, :url, :picture
  json.url sliderimage_url(sliderimage, format: :json)
end
