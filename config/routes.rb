Rails.application.routes.draw do

  namespace :parent do
    get 'posts/new'
    get 'top/top'
  end
  namespace :admin do
    get 'posts/new'
    get 'top/top'
  end
    devise_for :parents, controllers: {
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
