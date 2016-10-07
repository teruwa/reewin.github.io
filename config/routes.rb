Rails.application.routes.draw do
  get 'symptoms/index'

  get 'userinfos/index'
  resources :userinfos

  resources :posts
  get 'questions/index'
  resources :questions , except: [:index, :new]

  # get 'パス(※home/indexなど)' => 'home#index(※「コントローラー名#その中のアクション名」の形)'
  # これら上記のような「パス」と「コントローラー名＃アクション名」が等しいときの省略的な記述が⇨「get 'home/index'」
  # ※パラメーターをパスの中に埋め込みたい時の記述例「get 'home/:id/:email' => 'home#show'」
  # ※get "lesson/:action(/:name)"なども
  get 'users/new'

  devise_for :users
  get 'home/index'
  get 'home/show'
  
  get 'home/rie'
  get 'home/renrakusaki'
  get 'newss/index'
  resources :newss
  
  get 'announces/index'
  resources :announces
  
  get 'showusers/hokkaido'
  get 'showusers/touhoku'
  get 'showusers/kantou'
  get 'showusers/cyuubu'
  get 'showusers/kinki'
  get 'showusers/cyuugoku'
  get 'showusers/sikoku'
  get 'showusers/kyuusyuu'
  resources :showusers, only: [:index, :show] do
    collection do
    get 'hokkaido'
    get 'touhoku'
    get 'kantou'
    get 'cyuubu'
    get 'kinki'
    get 'cyuugoku'
    get 'sikoku'
    get 'kyuusyuu'
  end
  end
  
  get 'good_use/use_energy_enhancer'
  get 'good_use/use_icewave'
  get 'good_use/use_silentnights'
  get 'good_use/use_sp6complete'
  get 'good_use/use_y_age_aeon'
  get 'good_use/use_y_age_carnosine'
  get 'good_use/use_y_age_glutathione'
  get 'good_use/use_aravida'
  
  
  post 'showusers/news_list'
  
  get 'good/all_goods'
  get 'good/energy_enhancer'
  get 'good/icewave'
  get 'good/silentnights'
  get 'good/sp6complete'
  get 'good/y_age_aeon'
  get 'good/y_age_carnosine'
  get 'good/y_age_glutathione'
  get 'good/aravida'
  resources :good , except: [:index, :new]
  
  resources :symptom , except: [:index, :new]
  
  resources :loginuserposts
  
  resources :reviews

  root to: "home#index"
  
  get 'inquiry' => 'inquiry#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post 'inquiry/thanks' => 'inquiry#thanks'     # 送信完了画面



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
