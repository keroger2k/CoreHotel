CoreHotel::Application.routes.draw do
  namespace :admin do 
  	root :to => "staffs#index"
  	resources :staffs 
  end

  scope '/' do
    match '/about'  	=> 'about#about', :as => :about
    match '/contact'  	=> 'about#contact', :as => :contact
    match '/services'  	=> 'about#services', :as => :services
    match '/staff'  	=> 'about#staff', :as => :staff
    match '/properties' => 'about#properties', :as => :properties
  end
  root :to => 'home#index'
end
