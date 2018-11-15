json.array! @pages.each do |page|
  json.id page.id
  json.title page.title

  json.subpages do
    json.array! page.subpages, partial: 'api/subpages/subpage', as: :subpage
  end

end