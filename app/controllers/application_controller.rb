# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_random_quote


  protected

		def current_user
			redirect_to root_path if !session[:user_id]
		end

		def get_random_quote
			  @quotes = [ "Реклама - душа торгівлі",
					"Про ідеали нації можна судити по її рекламі",
					"Згортати рекламу, щоб зберегти гроші, це все одно,
						що зупиняти годинник, щоб зберегти час",
					"Вести бізнес без реклами - все одно, що відморгувати
						дівчині в повній темноті",
					"Задовільнити потребу - не штука, штука в тому,
						щоб створити потребу",
					"Креатив - це оргазм мозку. Дехто його відчуває, а
						дехто імітує ",
					"Легще написати 10 правильних сонетів, ніж хорошу
						рекламну об’яву"] 
			@quote = @quotes[rand(7)]
			if @quote.size < 65
				@margin = "-118"
			elsif @quote.size >= 65
				@margin = "-125"
			end
		end
end
