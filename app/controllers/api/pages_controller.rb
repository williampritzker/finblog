class Api::PagesController < ApplicationController

  def show
    @page = Page.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def index
    @pages = Page.all
    render 'index.json.jbuilder'
  end


end
