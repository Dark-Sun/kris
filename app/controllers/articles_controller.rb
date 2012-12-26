# -*- encoding : utf-8 -*-
class ArticlesController < ApplicationController

	before_filter :current_user, :except => [:index, :show]

	def index
		@articles = Article.paginate(:page => params[:page], :per_page => 3, :order => 'created_at DESC')
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		respond_to do |format|
			if @article.update_attributes(params[:article])
				format.html { redirect_to articles_path, 
							  :notice => "Новину успішно оновлено" }
			else
				format.html { redirect_to root_path, :notice =>
								"Виникли помилки оновленін новини" }
			end
		end
	end

	def create
		@article = Article.new(params[:article])
		respond_to do |format|
			if @article.save
				format.html { redirect_to articles_path, 
							  :notice => "Новину успішно створено"}
			else
				format.html { redirect_to root_path , :notice =>
								"Виникли помилки при створенні новини" }
			end
		end
	end

	def destroy 
		@article = Article.find_by_id(params[:id])
		respond_to do |format|
			if @article.destroy
				format.html { redirect_to articles_path , :notice =>
								"Запис успішно видалено" }
			else
				format.html { redirect_to articles_path, :notice => 
								"Упс, щось пішло не так" }
			end
		end
	end


end
