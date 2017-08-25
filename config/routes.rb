Rails.application.routes.draw do
  resources :demos
  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  root 'pages#home'
  get  "/*id", to: 'pages#show', as: :page, format: false, constraints: HighVoltage::Constraints::RootRoute

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
