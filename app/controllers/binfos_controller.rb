class BinfosController < ApplicationController
	before_action :authenticate_user!
  def index
    @binfos = Binfo.all
  end

  def show
    @binfo = Binfo.find(params[:id])
    @binfos = Binfo.all
    commontator_thread_show(@binfo)
  end

  def create
    Binfo.create(params[:binfo])
  end
  
  def update
    binfo = current_account.binfos.find(params[:id])
	  binfo.update!(binfo_params)
	  redirect_to binfo
  end
  
private
  def binfo_params
    params.require(:binfo).permit(:title, :body, :id)
  end
end

