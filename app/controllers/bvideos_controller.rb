class BvideosController < ApplicationController
	before_action :authenticate_user!
  def index
    @bvideos = Bvideo.all
  end

  def show
    @bvideo = Bvideo.find(params[:id])
    @bvideos = Bvideo.all
    commontator_thread_show(@bvideo)
  end

  def create
    Bvideo.create(params[:bvideo])
  end
  
  def update
    bvideo = current_account.bvideos.find(params[:id])
	  bvideo.update!(bvideo_params)
	  redirect_to bvideo
  end
  
private
  def bvideo_params
    params.require(:bvideo).permit(:title, :body, :id)
  end
end

