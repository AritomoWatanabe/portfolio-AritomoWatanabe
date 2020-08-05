Rails.application.routes.draw do

  root 'users/homes#top'

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
  	resources :photos, only:[:index, :show]
  	resources :attendance_records, only:[:index, :show] do
      member do
        get :calendar, as: :calendar
      end
    end
  	resources :daily_reports, only:[:show] do
      member do
        get :calendar, as: :calendar
      end
    end
  	resources :machines, only:[:index, :create, :update]
    resources :reservations, only:[:index, :new, :create, :show, :destroy]
    resources :cars, only:[:index, :create, :edit, :update]
  	root 'homes#top'
  end




  namespace :users do
  	resources :attendance_records, only:[:index, :create, :show, :edit, :update] do
      member do
        get :calendar, as: :calendar
      end
    end
  	resources :daily_reports, only:[:create, :show, :edit, :update, :destroy] do
      member do
        get :calendar, as: :calendar
      end
    end
  	resources :users, only:[:show, :edit, :update]
  	resources :construction_sites, only:[:index, :show, :edit, :update] do
      member do
        get :map, as: :map
      end
    end
  	resources :photos, only:[:new, :create, :show, :destroy]
  	resources :machines, only:[:index, :update]
    resources :reservations, only:[:index, :new, :create, :show]
  	root 'homes#top'
  end

  namespace :users do
    get 'uploader/index'
    get 'uploader/download'
  end
  namespace :admins do
    get 'uploader/index'
    post 'uploader/upload'
    get 'uploader/download'
  end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
