Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update]
  patch "/irds/:id/like", to: "birds#increment_likes"
end
