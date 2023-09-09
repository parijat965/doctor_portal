Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "users/registrations", :sessions => "users/sessions" }

  root "home#index"

  resources :patients
  delete "/delete_patient/:id",to:"patients#delete_patient",as:"delete_patient"

  get "patient_chart",to:"patients#patient_chart",as:"patient_chart"
  
end
