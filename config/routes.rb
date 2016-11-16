Rails.application.routes.draw do
  resources :appointments
  resources :vendors
  resources :docks
  resources :workers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'welcome/home', to: 'welcome#home'
  get 'welcome/manual', to: 'welcome#manual'
  get 'welcome/post_mortem', to: 'welcome#post_mortem'
  get 'welcome/requirements', to: 'welcome#requirements'
  get 'welcome/design_documentation', to: 'welcome#design_documentation'
  get 'welcome/docs_main', to: 'welcome#docs_main'
  get 'welcome/report', to: 'welcome#report'
  post 'welcome/report', to: 'welcome#report'
  get 'welcome/dockreport', to: 'welcome#dockreport'


end

