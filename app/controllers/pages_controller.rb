class PagesController < ApplicationController
  def index 
    # @project = Project.all.order('created_at DESC')
  end
  
  
  def create
    @project = Project.create(name: params[:name], description: params[:description], start_date: params[:start_date], end_date: params[:end_date], status: params[:status]) 
  end

  

  def board
    if params[:status].exist?
      @project = Project.where('status = ?', params[:status])
    else
      @project = Project.all
  end
end
