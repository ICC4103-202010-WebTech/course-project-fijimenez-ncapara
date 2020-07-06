Rails.application.routes.draw do
  devise_for :users
  get 'search/search'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  # get 'events/new_event_invitations', to: "event_invitations#new", as: :send_invite_otf

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users do
        resources :mail_boxes do
          resources :inbox_messages
        end
        resources :subscriptions
      end
      resources :events do
        resources :comments
        resources :date_options do
          resources :vote_dates
        end
        resources :event_files
        resources :notifications
      end
      resources :event_invitations do
        resources :vote_dates
      end
      resources :comments
      resources :reports
      resources :organizations do
        resources :organization_files
        resources :subscriptions
      end
      resources :subscriptions
    end
  end


  resources :users, defaults: { format: :html } do
    resources :mail_boxes, defaults: { format: :html} do
      resources :inbox_messages, defaults: { format: :html}
    end
    resources :subscriptions, defaults: { format: :html }
  end
  resources :events, defaults: { format: :html } do
    resources :comments, defaults: { format: :html }
    resources :date_options, defaults: { format: :html } do
      resources :vote_dates, defaults: { format: :html }
    end
    resources :event_files, defaults: { format: :html }
    resources :notifications, defaults: { format: :html }
    resources :event_invitations, defaults: { format: :html}
  end

  resources :event_invitations, defaults: { format: :html} do
    resources :vote_dates, defaults: { format: :html }
  end
  resources :comments, defaults: { format: :html }
  resources :reports, defaults: { format: :html}
  resources :organizations, defaults: { format: :html } do
    resources :organization_files, defaults: { format: :html }
    resources :subscriptions, defaults: { format: :html }
  end
  resources :subscriptions, defaults: { format: :html }
  resources :inbox_messages, defaults: { format: :html}

end
