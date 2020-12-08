Rails.application.routes.draw do
   devise_for :users
   root 'myevents#index'
   get '/redirect', to: 'myevents#redirect', as: 'redirect'
   get '/callback', to: 'myevents#callback', as: 'callback'
   get '/calendars', to: 'myevents#calendars', as: 'calendars'
   get '/events/:calendar_id', to: 'myevents#events', as: 'events', calendar_id: /[^\/]+/
   get '/myevents/:calendar_id', to: 'myevents#new_event', as: 'new_event', calendar_id: /[^\/]+/
   post '/create_new_event', to: 'myevents#create_new_event', as: 'create_new_event', calendar_id: /[^\/]+/
end
