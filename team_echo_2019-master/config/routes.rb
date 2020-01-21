Rails.application.routes.draw do
    resources :users
    resources :sessions, only: [:new, :create, :destroy]
    get 'signup', to: 'users#new', as: 'signup'
   get 'logi', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#destroy', as: 'logout'
    
    get 'about/index'
    get 'about/help'
  get 'charts/index'

  

 
  get 'grass_converter/chart'
  get 'grain_converter/chart'
  get 'tuber/chart'
  get 'research/index'  
  get 'grassjoin/index'
  get 'tuberosejoin/index'
  get 'tuberosejoin/show'
  get 'contacts/index'
  get 'grainjoin/index'

    
 
     
  get 'home/index'
  root 'home#index'
    

  resources :tuberoses  
  resources :plotsubplots 
  resources :grass_allocations  
  resources :grain_allocations 
  resources :tuberose_allocations
  resources :grasses 
  resources :grains 
  resources :contacts  
  resources :tuberosejoin 
end
