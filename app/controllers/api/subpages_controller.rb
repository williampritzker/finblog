class Api::SubpagesController < ApplicationController
  
  def show
    @subpage = Subpage.find(params[:id])
    render 'show.json.jbuilder'
  end

  def index
    @subpages = Subpage.all
    render 'index.json.jbuilder'
  end

end
