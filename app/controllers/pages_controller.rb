class PagesController < ApplicationController
  def index 
    
  end
  
  
  def create
    @task = Task.create(name: params[:name], description: params[:description], start_date: params[:start_date], finish_date: params[:finish_date], status: params[:status])
  end

  

  def board
    if params[:status].present?
      @tasks = Task.where('state = ?'), params[:state]
    else
      @tasks = Task.all
    end
  end
  
end
