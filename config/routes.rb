Rails.application.routes.draw do
    devise_for :users, controllers: {
      sessions:      'parents/sessions',
      passwords:     'parents/passwords',
      registrations: 'parents/registrations'
    }

    devise_for :admins, controllers: {
      sessions:      'admins/sessions',
      passwords:     'admins/passwords',
      registrations: 'admins/registrations'
    }
end
