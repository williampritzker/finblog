json.partial! "user.json.jbuilder", user: @user

json.articles do
  json.array! @user.articles, partial: 'api/articles/article', as: :article
end
