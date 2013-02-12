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

114.times do |n|
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

81.times do |n|
	adv = Advert.new
	adv.name = "Щит N #{n+1}"
	adv.city = "Мукачево"
	adv.adress = get_adress(Rails.root.to_s + "/app/assets/images/old/m#{n+1}.html")
	adv.adress.slice!("Щит №#{n+1}. ")
	adv.desc  = get_desc(Rails.root.to_s + "/app/assets/images/old/m#{n+1}.html")
	adv.image = load_image("m", n)
	adv.map = load_image("mmape", n)
	adv.category = "Біл-борд"
	adv.save
end

3.times do |n|
	adv = Advert.new
	adv.name = "Щит N #{n+1}"
	adv.city = "Берегово"
	adv.adress = get_adress(Rails.root.to_s + "/app/assets/images/old/b#{n+1}.html")
	adv.adress.slice!("Щит №#{n+1}. ")
	adv.desc  = get_desc(Rails.root.to_s + "/app/assets/images/old/b#{n+1}.html")
	adv.image = load_image("b", n)
	adv.map = load_image("bmape", n)
	adv.category = "Біл-борд"
	adv.save
end

7.times do |n|
	adv = Advert.new
	adv.name = "Щит N #{n+1}"
	adv.city = "Чоп"
	adv.adress = get_adress(Rails.root.to_s + "/app/assets/images/old/c#{n+1}.html")
	adv.adress.slice!("Щит №#{n+1}. ")
	adv.desc  = get_desc(Rails.root.to_s + "/app/assets/images/old/c#{n+1}.html")
	adv.image = load_image("c", n)
	adv.map = load_image("cmape", n)
	adv.category = "Біл-борд"
	adv.save
end

2.times do |n|
	adv = Advert.new
	adv.name = "Щит N #{n+1}"
	adv.city = "Свалява"
	adv.adress = get_adress(Rails.root.to_s + "/app/assets/images/old/s#{n+1}.html")
	adv.adress.slice!("Щит №#{n+1}. ")
	adv.desc  = get_desc(Rails.root.to_s + "/app/assets/images/old/s#{n+1}.html")
	adv.image = load_image("s", n)
	adv.map = load_image("smape", n)
	adv.category = "Біл-борд"
	adv.save
end

5.times do |n|
	adv = Advert.new
	adv.name = "Щит N #{n+1}"
	adv.city = "Іршава"
	adv.adress = get_adress(Rails.root.to_s + "/app/assets/images/old/i#{n+1}.html")
	adv.adress.slice!("Щит №#{n+1}. ")
	adv.desc  = get_desc(Rails.root.to_s + "/app/assets/images/old/i#{n+1}.html")
	adv.image = load_image("i", n)
	adv.map = load_image("imape", n)
	adv.category = "Біл-борд"
	adv.save
end

2.times do |n|
	adv = Advert.new
	adv.name = "Щит N #{n+1}"
	adv.city = "Нижні ворота"
	adv.adress = get_adress(Rails.root.to_s + "/app/assets/images/old/n#{n+1}.html")
	adv.adress.slice!("Щит №#{n+1}. ")
	adv.desc  = get_desc(Rails.root.to_s + "/app/assets/images/old/n#{n+1}.html")
	adv.image = load_image("n", n)
	adv.map = load_image("nmape", n)
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