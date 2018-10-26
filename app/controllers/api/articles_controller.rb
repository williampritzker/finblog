class Api::ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
  @article = Article.create(
    title: params[:title],
    text: params[:text],
    user_id: current_user.id,
    subpage_id: params[:subpage_id])

    if @article.save   
      render 'show.json.jbuilder'
    else 
      render json: {errors: @article.errors.full_messages}, status: :unprocessable_entity
    end


  end

  def update
    @article = Article.find(params[:id])
    @article.title = params[:title] || @article.title
    @article.text = params[:text] || @article.text
    @article.subpage_id = params[:subpage_id] || @article.subpage_id

    if @article.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @article.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find_by(id: params[:id])
    @article_tag_array = Article_Tag.where(article_id: params[:id]).ids
    @article_tag_array.each do |article_tag_id|
      @article_tag = Article_Tag.find_by(id: article_tag_id)
      @article_tag.destroy
    end
    @article.destroy
    render json: {message: "Article successfully destroyed!"}
  end


end
