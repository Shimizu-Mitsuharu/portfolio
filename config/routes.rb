Rails.application.routes.draw do
  root to: 'parent/tops#top'

  namespace :parent do
    get 'posts/new'
  end
  namespace :admin do
    get 'posts/new'
    get 'top/top'
  end
  devise_for :parents, controllers: {
    sessions: 'parents/sessions',
    passwords: 'parents/passwords',
    registrations: 'parents/registrations',
  }

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations',
  }
end
