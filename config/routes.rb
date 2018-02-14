Rails.application.routes.draw do
  get 'users/index'
  post 'users/login' => 'users#login'
  post 'users/index' => 'users#register'

  get 'booking/index' => 'booking#index'
  
  post 'booking/index' => 'booking#new'
  get 'booking/result' => 'booking#result'
  get 'booking/user_reservation' => 'booking#user_reservation'

  get 'home/index'
  root 'home#index'
end
