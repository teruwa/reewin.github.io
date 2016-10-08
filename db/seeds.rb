# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "管理者",password:"life20wave16jp", email:"lifewavejp.2016@gmail.com", telephone_number: "03-6805-4216", jyuusyo: "東京都", kentyou_id: "東京都", admin: true)

good = Good.create(goods_name: "Aravida", 
text: "酸化によるストレスを軽減し、体内mの抗酸化物質を助け、内側から潤いを与える。\n
デイリーリー：天然の抗酸化物質、米ぬかオイルに含まれる必須油が潤いをもたらします。 \n
ナイトリー：じ自然回復を助けミルクペプチドが、お肌のハリを改善する。", 
photo:  open("#{Rails.root}/db/images/Aravida.jpg"))
good.symptom_list.add("xxx", "yyy")
good.save

Good.create(goods_name: "Energy enhancer" , 
text:"身体パフォーマンスを向上させる。 \n
効果時の脂肪燃焼率が20%以上あがる \n
エネルギーと持久力が高まる \n
集中力を向上 \n
頭痛への効果", 
photo: open("#{Rails.root}/db/images/Energy Enhancer.jpg"))

Good.create(goods_name: "Icewave" , 
text:"痛み止め全般 \n
膝・腰・坐骨神経痛・背痛・頭痛・etc...など多岐多岐に渡る痛みへの効能" , 
photo: open("#{Rails.root}/db/images/IceWave.jpg"))

Good.create(goods_name: "Silent nights" , 
text:"良質な眠りを促進させる。 \n
寝つきが悪い、睡眠時間が短い、全身への痛みなど \n
睡眠薬に頼らないと眠れない日々からの離脱", 
photo: open("#{Rails.root}/db/images/Silent Nights.jpg"))

Good.create(goods_name: "SP6 complete" , 
text:"空腹感を抑え、食事量の制限に役立つ \n
ダイエットに対する補助", 
photo: open("#{Rails.root}/db/images/SP6 Complete.jpg"))

Good.create(goods_name: "Y-age aeon" , 
text:"自律神経機能のバランスを整える \n
ストレスの軽減への効果 \n
炎症を抑える \n
他製品との併用によりその製品の効果が上昇", 
photo: open("#{Rails.root}/db/images/Y-Age Aeon.jpg"))

Good.create(goods_name: "Y-age carnosine" , 
text:"筋力と柔軟性を高める \n
持久力の向上 \n
再生能力が高くなる", 
photo: open("#{Rails.root}/db/images/Y-Age Carnosine.jpg"))

Good.create(goods_name: "Y-age glutathione" , 
text:"健康増進 \n
免疫力を高める \n
ニキビ抑制", 
photo: open("#{Rails.root}/db/images/Y-Age_Glutathione.jpg"))