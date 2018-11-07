json.partial! "tag.json.jbuilder", tag: @tag

json.articles do
  json.array! @tag.articles, partial: 'api/articles/article', as: :article
end

