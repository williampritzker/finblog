json.partial! "subpage.json.jbuilder", subpage: @subpage

json.articles do
  json.array! @subpage.articles, partial: 'api/articles/article', as: :article
end

json.page do
  json.partial! 'api/pages/page', page: @subpage.page
end