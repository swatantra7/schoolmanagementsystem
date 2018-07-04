Rails.application.routes.draw do

 devise_for :users

 resources :contacts
 resources :courses, only: :index

  authenticated :user do
    root 'admin/students#index', as: :authenticated_root
    namespace :admin do 
      resources :students
      resources :teachers
      resources :student_sheets
    end
  end

end
