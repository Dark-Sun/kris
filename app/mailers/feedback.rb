# -*- encoding : utf-8 -*-
class Feedback < ActionMailer::Base

  default from: "feedback@ra-kris.com"
  default to:   "darksundarksun@gmail.com"

  def feedback_email(message)
  	@message = message
  	mail( :subject =>  "/Повідомлення з ra-kris.com/ #{message.subject}",
  		  :body => "Контакти:#{message.contacts} 
  		  			Ім’я:#{message.name} 
  		  			#{message.body}")
  end
end
