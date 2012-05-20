CoreHotel::Application.routes.draw do
  resources :employees

  namespace "admin" do 
    root :to => "employees#index"
    resources :employees
  end

  scope '/' do
    match '/about'  	=> 'about#about', :as => :about
    match '/contact'  	=> 'about#contact', :as => :contact
    match '/services'  	=> 'about#services', :as => :services
    match '/staff'  	=> 'employees#index', :as => :staff
    match '/properties' => 'about#properties', :as => :properties
  end
  root :to => 'home#index'
end
