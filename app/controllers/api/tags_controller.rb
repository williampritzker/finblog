class Api::TagsController < ApplicationController

  def show
    @tag = Tag.find(params[:id])
    render 'show.json.jbuilder'
  end

  def index
    @tags = Tag.all
    render 'index.json.jbuilder'
  end

end
