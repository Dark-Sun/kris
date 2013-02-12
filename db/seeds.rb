# -*- encoding : utf-8 -*-
require 'nokogiri'
require 'open-uri'


def load_image(prefix, n)
	file = File.join(Rails.root.to_s + '/app/assets/images/old', "#{prefix}#{n+1}" + ".jpg")
	io = File.new(file)
	io
end

def get_adress(path)
	doc = Nokogiri::HTML(open(path))
	adress = ""
	n = 0
	doc.css('h3').each do |text|
		if n == 1
			adress += text
			break
		end
		n+=1
	end
	adress
end

def get_desc(path)
	doc = Nokogiri::HTML(open(path))
	desc = ""
	doc.css('p font').each do |text|
		desc += text
		desc.slice! "Розташування на мапі:"
		break
	end
	desc
end

113.times do |n|
	adv = Advert.new
	adv.name = "Щит N #{n+1}"
	adv.city = "Ужгород"
	adv.adress = get_adress(Rails.root.to_s + "/app/assets/images/old/u#{n+1}.html")
	adv.adress.slice!("Щит №#{n+1}. ")
	adv.desc  = get_desc(Rails.root.to_s + "/app/assets/images/old/u#{n+1}.html")
	adv.image = load_image("u", n)
	adv.map = load_image("umape", n)
	adv.category = "Біл-борд"
	adv.save
end

=begin
n=0
adv = Advert.new
	adv.name = "Щит N #{n+1}"
	adv.city = "Ужгород"
	adv.adress = get_adress(Rails.root.to_s + "/app/assets/images/old/u#{n+1}.html")
	adv.adress.slice!("Щит №#{n+1}. ")
	adv.desc  = get_desc(Rails.root.to_s + "/app/assets/images/old/u#{n+1}.html")
	adv.image = load_image("u", n)
	adv.map = load_image("umape", n)
	adv.category = "Біл-борд"
	adv.save
=end