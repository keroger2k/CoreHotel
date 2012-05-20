CoreHotel::Application.routes.draw do

  resources :posts

  resources :employee

  namespace "admin" do 
    root :to => "employee#index"
    resources :employee
  end

  scope '/' do
    match '/about'  	=> 'about#about', :as => :about
    match '/contact'  	=> 'about#contact', :as => :contact
    match '/services'  	=> 'about#services', :as => :services
    match '/staff'  	=> 'employee#index', :as => :staff
    match '/properties' => 'about#properties', :as => :properties
  end
  root :to => 'home#index'
end
