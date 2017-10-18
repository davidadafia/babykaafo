class DinfosController < ApplicationController
	before_action :authenticate_user!
  def index
    @dinfos = Dinfo.all
  end

  def show
    @dinfo = Dinfo.find(params[:id])
    @dinfos = Dinfo.all
    commontator_thread_show(@dinfo)
  end

  def create
    Dinfo.create(params[:dinfo])
  end
  
  def update
    dinfo = current_account.dinfos.find(params[:id])
	  dinfo.update!(dinfo_params)
	  redirect_to dinfo
  end
  
private
  def dinfo_params
    params.require(:dinfo).permit(:title, :body, :id)
  end
end

