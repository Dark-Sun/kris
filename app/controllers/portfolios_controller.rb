# -*- encoding : utf-8 -*-
class PortfoliosController < ApplicationController

	before_filter :current_user, :except => [:index]

	def index
		@portfolios = Portfolio.paginate(:page => params[:page], :per_page => 4)
	end

	def show
		@work = Portfolio.find(params[:id])
	end

	def new
		@work = Portfolio.new
	end

	def edit
		@work = Portfolio.find(params[:id])
	end

	def create
		@work = Portfolio.new(params[:portfolio])
		respond_to do |format|
			if @work.save
				format.html { redirect_to portfolios_path, :notice => "Роботу спішно додано"}
			else
				format.html { redirect_to '/portfolios/new', 
							  :notice => "Виникла помилка при створенні"}
			end
		end
	end

	def update
		@work = Portfolio.find(params[:id])
		respond_to do |format|
			if @work.update_attributes(params[:portfolio])
				format.html { redirect_to portfolios_path, :notice => "Роботу спішно додано"}
			else
				format.html { redirect_to '/portfolios/new', 
							  :notice => "Виникла помилка при створенні"}
			end
		end
	end

	def destroy
		@work = Portfolio.find_by_id(params[:id])
		respond_to do |format|
			if @work.destroy
				format.html { redirect_to portfolios_path , :notice =>
								"Роботу успішно видалено" }
			else
				format.html { redirect_to portfolios_path, :notice => 
								"Упс, щось пішло не так" }
			end
		end
	end

	

end
