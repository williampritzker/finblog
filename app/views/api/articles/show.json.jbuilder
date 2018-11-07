json.partial! "article.json.jbuilder", article: @article

json.tags do
  json.array! @article.tags, partial: 'api/tags/tag', as: :tag
end

json.user do
  json.partial! 'api/users/user', user: @article.user
end

json.subpage do
  json.partial! 'api/subpages/subpage', subpage: @article.subpage
end
