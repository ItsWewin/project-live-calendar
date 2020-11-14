Rails.application.routes.draw do
  resources :calendars, only: [:index]

  root 'calendars#index'

  get 'arrangments/:day' => 'calendars#day_change'

  post 'meetings/:arr_id/create_or_update' => 'meetings#create_or_update'
  post 'meetings/:arr_id/pioneer_update_meeting' => 'meetings#pioneer_update_meeting'

  resources :infos, only: [:index]
end
