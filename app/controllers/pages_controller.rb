# -*- encoding : utf-8 -*-
class PagesController < ApplicationController
	
	def main
		@works = Portfolio.find(:all, :order => "id desc", :limit => 5).reverse
		@articles = Article.find(:all, :order => "id desc", :limit => 3)
		@articles.each do |article|
			article.body = article.body[0,170]
		end
		
	end

	def services
	end

	def about
	end

	def contacts
		@message = Message.new
	end

	def send_email
		@message = Message.new(params[:message])
		respond_to do |format|
			if Feedback.feedback_email(@message).deliver
				format.html { redirect_to root_path, 
					:notice => "Лист успішно надіслано"}
			else
				format.html { redirect_to root_path,
					:notice => "Виникла помилка при надсилвнні листа"}
			end
		end
	end
end
