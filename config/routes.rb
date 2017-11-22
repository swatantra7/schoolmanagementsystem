Rails.application.routes.draw do

 resources :contacts
 resources :courses, only: :index

end
