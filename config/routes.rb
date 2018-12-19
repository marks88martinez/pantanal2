Rails.application.routes.draw do
  # devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login', to: 'sistema/admins#index'
  namespace :sistema do
    resources :home, except: [:show]
    resources :admins, except: [:show]
    resources :banners, except: [:show]
    resources :banner_inferiors, except: [:show]
    resources :marcas, except: [:show]
    resources :empresas, except: [:show]
    resources :vendedores, except: [:show]
    resources :cats, except: [:show]
    resources :subcats, except: [:show]
    resources :productos, except: [:show]
    resources :subproductos, except: [:show]
  
   
  
  
    
    get 'productos', to:'productos#delete'
    get 'productos/search', to:'productos#search'
  end
  
  
  
  
  namespace :sitio do
    resources :home
    resources :empresa
    resources :productos
    get '/search/', to:'productos#search'
    
    resources :vendedores
    resources :contacto
    resources :detalle_productos
    get '/detalle_marca/:id', to:'productos#detalle_marca'
  end
  root "sitio/home#index"
  devise_for :admins, :skip => [:registrations]
  get "*path", to: redirect('/')



end
