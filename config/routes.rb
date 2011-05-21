Rappel::Application.routes.draw do
  resources :meetings

    match '/meetings' => 'meetings#index', :as => 'user_root' #Devise Redirect after Sign In

    get "/account", :to => "home#account"
    get "/policy", :to => "home#policy"
    get "/faqs", :to => "home#faqs"
    get "/contact", :to => "home#contact"
    get "/about", :to => "home#about" 

    devise_for :user, :as => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

    root :to => "home#index"
end
