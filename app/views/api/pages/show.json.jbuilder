json.partial! "page.json.jbuilder", page: @page

json.subpages do
  json.array! @page.subpages, partial: 'api/subpages/subpage', as: :subpage
end
