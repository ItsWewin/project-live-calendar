Rails.application.routes.draw do
  resources :calendars, only: [:index]

  root 'calendars#index'

  get 'calendars/:day' => 'calendars#day_change'
  get 'calendars/need_refresh/:user_id' => 'calendars#need_refresh'

  post 'meetings/:arr_id/create_or_update' => 'meetings#create_or_update'
  post 'meetings/:arr_id/pioneer_update_meeting' => 'meetings#pioneer_update_meeting'

  resources :infos, only: [:index]
end
