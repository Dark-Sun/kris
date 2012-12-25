# -*- encoding : utf-8 -*-
class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:name], params[:password])
  	if user
  		session[:user_id] = user.id
  		redirect_to root_path, :notice => "Loggen in"
  	else
  		render "new", :notice => "Error"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path, :notice => "Logged out"
  end
  
end
