class SessionsController < ApplicationController
  def  new
    
  end
  def create
    if params[:name] != nil || params[:name] != ''
      session[:name] = params[:name]
      redirect_to '/hello.html.erb'
    else
      redirect_to '/new.html.erb'
    end
  end
  def destroy
    session.delete :name
  end
end