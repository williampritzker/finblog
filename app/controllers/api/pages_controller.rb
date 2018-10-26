class Api::PagesController < ApplicationController

  def show
    @page = Page.find_by(id: params[:id])
    render "show.json.jbuilder"
  end


end
