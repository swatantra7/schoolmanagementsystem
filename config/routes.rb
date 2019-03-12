Rails.application.routes.draw do

 devise_for :users, path: 'users'

 resources :contacts
 resources :courses, only: :index

  devise_scope :user do
    authenticated :user do
      root 'admin/students#index', as: :authenticated_root
      namespace :admin do 
        resources :students
        resources :teachers
        resources :student_sheets
      end
    end
  end
  devise_for :students, path: 'students'
  devise_scope :student do
    authenticated :student do
      root 'students/notifications#admid_cards'
      namespace :students do
        resources :notifications do
          collection do
            get :admid_cards
            get :results
          end
        end
      end
    end
  end

end
