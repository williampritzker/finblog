json.partial! "tag.json.jbuilder", tag: @tag

json.array! @tag.articles.each do |article|
  json.partial! 'aritcle.json.jbuilder', article: article
end

# call article partial inside array

