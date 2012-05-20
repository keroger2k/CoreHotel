CoreHotel::Application.routes.draw do

  get "employee/index"

  scope '/' do
    match '/about'  	=> 'about#about', :as => :about
    match '/contact'  	=> 'about#contact', :as => :contact
    match '/services'  	=> 'about#services', :as => :services
    match '/staff'  	=> 'employee#index', :as => :staff
    match '/properties' => 'about#properties', :as => :properties
  end
  root :to => 'home#index'
end
