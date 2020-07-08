Rails.application.routes.draw do

#初期のdeviseの設定だとadminとuserで見分けがつけにくい為下記記述でわかりやすくする
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}





  namespace :admins do
  	resources :users, only:[:index, :show, :edit, :update]
  	resources :construction_sites, only:[:index, :new, :create, :show, :edit, :update]
  	resources :photos, only:[:index]
  	resources :attendance_records, only:[:index]
  	resources :daily_reports, only:[:index, :show]
  	resources :machines, only:[:index, :new]
  	root 'homes#top'
  end




  namespace :users do
  	resources :attendance_records, only:[:index, :create, :show, :edit, :update]
  	resources :daily_reports, only:[:index, :create, :show, :edit, :update]
  	resources :users, only:[:show, :edit, :update]
  	resources :construction_sites, only:[:index, :show]
  	resources :photos, only:[:new, :create]
  	resources :machines, only:[:index, :update]
  	root 'homes#top'
  end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
