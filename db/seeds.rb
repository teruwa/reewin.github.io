# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "管理者",password:"life20wave16jp", email:"lifewavejp.2016@gmail.com", telephone_number: "03-6805-4216", jyuusyo: "東京都", kentyou_id: "東京都", admin: true)

Good.create(goods_name: "Aravida")
Good.create(goods_name: "Energy enhancer")
Good.create(goods_name: "Icewave")
Good.create(goods_name: "Silent nights")
Good.create(goods_name: "SP6 complete")
Good.create(goods_name: "Y-age aeon")
Good.create(goods_name: "Y-age carnosine")
Good.create(goods_name: "Y-age glutathione")