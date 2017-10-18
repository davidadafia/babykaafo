class ApblogsController < ApplicationController
  def index
    @apblogs = Apblog.all
  end

  def show
    @apblog = Apblog.find(params[:id])
    @apblogs = Apblog.all
    commontator_thread_show(@apblog)
  end

  def create
    Apblog.create(params[:apblog])
  end
  
  def update
    apblog = current_account.apblogs.find(params[:id])
	  apblog.update!(apblog_params)
	  redirect_to apblog
  end
  
private
  def apblog_params
    params.require(:apblog).permit(:title, :body, :id, :writer, :blopic)
  end
end

