Rails.application.routes.draw do
  root :to => "static#index"
  get "/:static_page" => "static#show", :as => "static_page"
  post "/notify" => "static#notify"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
