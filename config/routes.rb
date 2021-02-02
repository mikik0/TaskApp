Rails.application.routes.draw do
  resources :tasks
  root  'users/sessions#create'
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  }
  get 'contact', to: 'contacts#index'             #入力画面
  post 'contact/confirm' => 'contacts#confirm'   # 確認画面
  post 'contact/complete' => 'contacts#complete' # 送信完了画面

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end
end
