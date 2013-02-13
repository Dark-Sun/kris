# -*- encoding : utf-8 -*-
class AttachmentsController < ApplicationController
		
		before_filter :current_user

	def new
		@file = Attachment.new
	end
	
	def create
		Attachment.last.destroy
		@file = Attachment.new(params[:attachment])

		respond_to do |format|
			if @file.save
				format.html { redirect_to root_path, 
								:notice => "Успішно завантажено"
				}
			else
				format.html { redirect_to root_path, 
								:notice => "Виникла помилка при завантаженні"
				}
			end
		end

		def destroy
			@file = Attachment.find_by_id(params[:id])
			respond_to do |format|
				if @file.destroy
					format.html { redirect_to root_path, 
								:notice => "Успішно видалено"
					}
				else
					format.html { redirect_to root_path, 
								:notice => "Виникла помилка при видаленні"
				}
				end
			end
		end
	end
end
