Rails.application.routes.draw do
  get 'todos',to:'todos#index'
  #get 'acceptances/new'
  #get 'acceptances/create'
  #resources :books
  #get 'greeting/index'
  #newとcreateメソッドだけを作ってくれる。
  resources :acceptances , only: [:new,:create]
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'greeting/index', to: 'greeting#index'
  #アプリケーションルート
  root to:'greeting#index'
end
