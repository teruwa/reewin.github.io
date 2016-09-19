class GoodController < ApplicationController
 def all_goods
 end
 
 def energy_enhancer
  @review = Review.new
  @good = Good.find_by(goods_name: "Energy enhancer")
 end
 
 def icewave
  @review = Review.new
  @good = Good.find_by(goods_name: "Icewave")
 end
 
 def silentnights
  @review = Review.new
  @good = Good.find_by(goods_name: "Silent nights")
 end
 
 def sp6complete
  @review = Review.new
  @good = Good.find_by(goods_name: "SP6 complete")
 end
 
 def y_age_aeon
  @review = Review.new
  @good = Good.find_by(goods_name: "Y-age aeon")
 end
 
 def y_age_carnosine
  @review = Review.new
  @good = Good.find_by(goods_name: "Y-age carnosine")
 end
 
 def y_age_glutathione
  @review = Review.new
  @good = Good.find_by(goods_name: "Y-age glutathione")
 end
 
 def aravida
  @review = Review.new
  @good = Good.find_by(goods_name: "Aravida")
 end
 
 
 
end