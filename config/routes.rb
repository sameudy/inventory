Rails.application.routes.draw do
	root "product#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "products" => "product#index"
  get "products/new" => "product#new"
  get "products/:id" => "product#show", as: "product"
  get "products/:id/edit" => "product#edit", as: "edit_product"
  patch"products/:id" => "product#update"
  post "products" => "product#create"
  delete "products/:id" => "product#destroy"

  # resource :products

end
