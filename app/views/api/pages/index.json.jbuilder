json.array! @pages.each do |page|
  json.id page.id
  json.title page.title
end