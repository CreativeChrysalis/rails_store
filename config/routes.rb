Rails.application.routes.draw do

  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'
  post 'order_complete' => 'cart#order_complete'

  devise_for :users

  root 'storefront#all_items'

  get 'categorial' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'

  resources :products
end
