# -*- encoding : utf-8 -*-
#!/bin/env ruby
# encoding: utf-8

class AdvertsController < ApplicationController

	before_filter :current_user, :except => [:index, :show]

	def index
		@advertisings = Advert.scoped
		@advertisings = @advertisings.by_city(params[:city]) if params[:city]
		@advertisings = @advertisings.by_category(params[:category]) if params[:category]
		@advertisings = @advertisings.paginate(:page => params[:page], :per_page => 10)
	end

	def show
		@advertising = Advert.find(params[:id])
	end

	def new
		@advertising = Advert.new
	end

	def edit
		@advertising = Advert.find(params[:id])
	end

	def update
		@advertising = Advert.find(params[:id])
		respond_to do |format|
			if @advertising.update_attributes(params[:advert])
				format.html { redirect_to @advertising, 
							  :notice => "Запис успішно оновлено" }
			else
				format.html { redirect_to root_path, :notice =>
								"Виникли помилки при оновленні запису" }
			end
		end
	end

	def create
		@advertising = Advert.new(params[:advert])
		respond_to do |format|
			if @advertising.save
				format.html { redirect_to @advertising, 
							  :notice => "Запис успішно створено"}
			else
				format.html { redirect_to root_path , :notice =>
								"Виникли помилки при створенні запису" }
			end
		end
	end

	def destroy 
		@advertising = Advert.find_by_id(params[:id])
		respond_to do |format|
			if @advertising.destroy
				format.html { redirect_to adverts_path , :notice =>
								"Запис успішно видалено" }
			else
				format.html { redirect_to adverts_path, :notice => 
								"Упс, щось пішло не так" }
			end
		end
	end

end
