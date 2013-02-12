# -*- encoding : utf-8 -*-
class XlsController < ApplicationController

	before_filter :current_user
	
	def index
	end

	def new
		@xls = AdressXls.new
	end

	def create
		if AdressXls.last
			@xls = AdressXls.last
		else
			@xls = AdressXls.new(params[:xls])
		end

		if @xls.save
			 redirect_to "/", 
							  :notice => "Завантажено" 
			else
				 redirect_to "/", :notice =>
								"Виникли помилки при завантаженні" 
		end
	end

	def destroy
		@xls = AdressXls.last
		if @xls.destroy
				format.html { redirect_to "/", :notice =>
								"Успішно видалено" }
			else
				format.html { redirect_to "/", :notice => 
								"Упс, щось пішло не так" }
		end
	end
end
