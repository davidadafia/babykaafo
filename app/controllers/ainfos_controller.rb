class AinfosController < ApplicationController
	before_action :authenticate_user!
  def index
    @ainfos = Ainfo.all
  end

  def show
    @ainfo = Ainfo.find(params[:id])
    @ainfos = Ainfo.all
    commontator_thread_show(@ainfo)
  end

  def create
    Ainfo.create(params[:ainfo])
  end
  
  def update
    ainfo = current_account.ainfos.find(params[:id])
	  ainfo.update!(ainfo_params)
	  redirect_to ainfo
  end
  
private
  def ainfo_params
    params.require(:ainfo).permit(:title, :body, :id)
  end
end

