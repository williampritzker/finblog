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
      
      @tag_ids = (params[:tags]).split("") #take out eval on front-end if sending an array
      
      @tag_ids.each do |tag_id|
      @article_tag = ArticleTag.create(
      article_id: @article.id,
      tag_id: tag_id)
      end

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
      
      @article.article_tags.destroy_all

      @tag_ids = eval(params[:tag_ids]) #take out eval on front-end if sending an array
      
      @tag_ids.each do |tag_id|
      @article_tag = ArticleTag.create(
      article_id: @article.id,
      tag_id: tag_id)
      end
      render 'show.json.jbuilder'
    
    else 
      render json: {errors: @article.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find_by(id: params[:id])
    @article.destroy
    render json: {message: "Article successfully destroyed!"}
  end

end