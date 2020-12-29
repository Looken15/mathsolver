Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/home/solve_problem/:id', to: 'home#solve_problem'
  get '/home/method_kramer', to: 'home#method_kramer'
  get '/home/method_gauss', to: 'home#method_gauss'
end
