# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Advert.destroy_all


100.times do |n|
	adv = Advert.new
	adv.name = "Біл-борд N #{n}"
	adv.city = "Мукачево"
	adv.adress = "Недецеї 17/7, сторона А"
	adv.desc  = "Трафік 100500 людей на день, 30000 машин. Вигідне розташування в центрі міста"
	adv.image_path = "u103.jpeg"
	adv.map_path = "umape103.jpeg"
	adv.category = "Біл-борд"
	adv.save
end


100.times do |n|
	adv = Advert.new
	adv.name = "Біл-борд N #{n}"
	adv.city = "Ужгород"
	adv.adress = "Недецеї 17/7, сторона А"
	adv.desc  = "Трафік 100500 людей на день, 30000 машин. Вигідне розташування в центрі міста"
	adv.category = "Біл-борд"
	adv.save
end

admin = User.new
admin.name = "admin"
admin.password = "password"
admin.save
