Rails.application.routes.draw do

  resources :printed_designs
  resources :web_apps
  resources :logos
  devise_for :users

  root 'static_pages#home'

  get "/design", to: "static_pages#design", as: "design"
  get "/team", to: "static_pages#team", as: "team"
  get "/facebook", to: "static_pages#facebook", as: "facebook"
  get "/instagram", to: "static_pages#instagram", as: "instagram"
  get "/snapchat", to: "static_pages#snapchat", as: "snapchat"
  get "/search", to: "static_pages#search", as: "search"
  get "/twitter", to: "static_pages#twitter", as: "twitter"
  get "/video_animations", to: "static_pages#video_animations", as: "video_animations"

  get "/social-media", to: "static_pages#social_media", as: "social-media"

  get 'contact_us' => 'contacts#new', as:"contact"
  resources 'contacts', only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
