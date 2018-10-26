class Api::ArticleTagsController < ApplicationController

  def create

    @article_tag = Article_Tag.create(
    article_id: params[:article_id],
    tag_id: params[:tag_id],
      )

    if @article_tag.save
      render 'Tag created'
    else 
      render json: {errors: @article.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy

    @article_tag = Article_Tag.find(params[:id])

    if @article_tag.save
      render 'Tag created'
    else 
      render json: {errors: @article.errors.full_messages}, status: :unprocessable_entity
    end

  end


end
