class BpblogsController < ApplicationController
	before_action :authenticate_user!
  def index
    @bpblogs = Bpblog.all
  end

  def show
    @bpblog = Bpblog.find(params[:id])
    @bpblogs = Bpblog.all
    commontator_thread_show(@bpblog)
  end

  def create
    Bpblog.create(params[:bpblog])
  end
  
  def update
    bpblog = current_account.bpblogs.find(params[:id])
	  bpblog.update!(bpblog_params)
	  redirect_to bpblog
  end
  
private
  def bpblog_params
    params.require(:bpblog).permit(:title, :body, :id, :writer, :blopic)
  end
end

