Rails.application.routes.draw do

  resources :prospects

  root "prospects#index"

  get 'import_file', to: 'import_file#index'
  post 'import_file/import', to: 'import_file#import'

end
