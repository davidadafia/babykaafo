class DvideosController < ApplicationController
	before_action :authenticate_user!
  def index
    @dvideos = Dvideo.all
  end

  def show
    @dvideo = Dvideo.find(params[:id])
    @dvideos = Dvideo.all
    commontator_thread_show(@dvideo)
  end

  def create
    Dvideo.create(params[:dvideo])
  end
  
  def update
    dvideo = current_account.dvideos.find(params[:id])
	  dvideo.update!(dvideo_params)
	  redirect_to dvideo
  end
  
private
  def dvideo_params
    params.require(:dvideo).permit(:title, :body, :id)
  end
end

