class Api::SubpagesController < ApplicationController
  
  def show
    @subpage = Subpage.find(params[:id])
    render 'show.json.jbuilder'
  end

end
