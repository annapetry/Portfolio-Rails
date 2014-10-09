Rails.application.routes.draw do
  root to: "static_pages#root"
  resources :contact_forms, only: :create
end
