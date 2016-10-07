class ShowusersController < ApplicationController
    def index
        @users = User.where(shopowner: true).page(params[:page])
    end
    
    def show
        @user = User.find(params[:id])
    end
    
    def all
      @users = User.where(shopowner: true).page(params[:page])
    end
    
    def hokkaido
      @users = User.where(shopowner: true).where(shopkentyou_id: "北海道").page(params[:page])
        respond_to do |format|
        format.html
        format.js
        end
    end
    
    def kantou
      @users = User.where(shopowner: true).where(shopkentyou_id: ["東京都","茨城県","栃木県","群馬県","埼玉県","千葉県","神奈川県"]).page(params[:page])
        respond_to do |format|
        format.html
        format.js
        end
    end
    
    def touhoku
      @users = User.where(shopowner: true).where(shopkentyou_id: ["青森県","岩手県","宮城県","秋田県","山形県","福島県"]).page(params[:page])
        respond_to do |format|
        format.html
        format.js
        end
    end
    
    def cyuubu
      @users = User.where(shopowner: true).where(shopkentyou_id: ["新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県","静岡県","愛知県"]).page(params[:page])
        respond_to do |format|
        format.html
        format.js
        end
    end
    
    def cyuugoku
      @users = User.where(shopowner: true).where(shopkentyou_id: ["鳥取県","島根県","岡山県","広島県","山口県"]).page(params[:page])
        respond_to do |format|
        format.html
        format.js
        end
    end
    
    def kinki
      @users = User.where(shopowner: true).where(shopkentyou_id: ["京都府","大阪府","三重県","滋賀県","兵庫県","奈良県","和歌山県"]).page(params[:page])
        respond_to do |format|
        format.html
        format.js
        end
    end
    
    def kyuusyuu
      @users = User.where(shopowner: true).where(shopkentyou_id: ["福岡県","佐賀県","長崎県","大分県","熊本県","宮崎県","鹿児島県","沖縄県"]).page(params[:page])
        respond_to do |format|
        format.html
        format.js
        end
    end
    
    def sikoku
      @users = User.where(shopowner: true).where(shopkentyou_id: ["徳島県","香川県","愛媛県","高知県"]).page(params[:page])
        respond_to do |format|
        format.html
        format.js
        end
    end
    
    
    
    def news_list
       region = params[:pref]   #送られてきたVALUEを取得
        if region=="全店舗表示"
          @users = User.where(shopowner: true).page(params[:page])
        elsif region== "北海道"
           @users = User.where(shopowner: true).where(shopkentyou_id: "北海道").page(params[:page])
        elsif region== "東北"
          @users = User.where(shopowner: true).where(shopkentyou_id: ["青森県","岩手県","宮城県","秋田県","山形県","福島県"]).page(params[:page])
        elsif region== "関東"
          @users = User.where(shopowner: true).where(shopkentyou_id: ["東京都","茨城県","栃木県","群馬県","埼玉県","千葉県","神奈川県"]).page(params[:page])
        elsif region== "中部"
          @users = User.where(shopowner: true).where(shopkentyou_id: ["新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県","静岡県","愛知県"]).page(params[:page])
        elsif region== "近畿"
          @users = User.where(shopowner: true).where(shopkentyou_id: ["京都府","大阪府","三重県","滋賀県","兵庫県","奈良県","和歌山県"]).page(params[:page])
        elsif region== "中国"
          @users = User.where(shopowner: true).where(shopkentyou_id: ["鳥取県","島根県","岡山県","広島県","山口県"]).page(params[:page])
        elsif region== "四国"
          @users = User.where(shopowner: true).where(shopkentyou_id: ["徳島県","香川県","愛媛県","高知県"]).page(params[:page])
        elsif region== "九州"
          @users = User.where(shopowner: true).where(shopkentyou_id: ["福岡県","佐賀県","長崎県","大分県","熊本県","宮崎県","鹿児島県","沖縄県"]).page(params[:page])
        end
    end
end
