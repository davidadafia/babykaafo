class AvideosController < ApplicationController
	before_action :authenticate_user!
  def index
    @avideos = Avideo.all
  end

  def show
    @avideo = Avideo.find(params[:id])
    @avideos = Avideo.all
    commontator_thread_show(@avideo)
  end

  def create
    Avideo.create(params[:avideo])
  end
  
  def update
    avideo = current_account.avideos.find(params[:id])
	  avideo.update!(avideo_params)
	  redirect_to avideo
  end
  
private
  def avideo_params
    params.require(:avideo).permit(:title, :body, :id)
  end
end

