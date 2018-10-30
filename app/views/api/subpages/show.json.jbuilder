json.partial! "subpage.json.jbuilder", subpage: @subpage

json.array! @subpage.articles.each do |article|
  json.title article.title
  json.user_id article.user_id
  json.text article.text
end