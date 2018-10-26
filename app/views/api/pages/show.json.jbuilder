json.array! @page.subpages.each do |subpage|
  json.id subpage.title
end

