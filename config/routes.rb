Rails.application.routes.draw do

  get 'expanses/:year/:month' , to: 'expanses#filterByMounth'
  get 'incomes/:year/:month' , to: 'incomes#filterByMounth'
  resources :expanses 
  resources :incomes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
