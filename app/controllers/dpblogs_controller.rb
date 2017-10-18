class DpblogsController < ApplicationController
  def index
    @dpblogs = Dpblog.all
  end

  def show
    @dpblog = Dpblog.find(params[:id])
    @dpblogs = Dpblog.all
    commontator_thread_show(@dpblog)
  end

  def create
    Dpblog.create(params[:dpblog])
  end
  
  def update
    dpblog = current_account.dpblogs.find(params[:id])
	  dpblog.update!(dpblog_params)
	  redirect_to dpblog
  end
  
private
  def dpblog_params
    params.require(:dpblog).permit(:title, :body, :id, :writer, :blopic)
  end
end

