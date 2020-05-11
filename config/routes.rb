Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :users, defaults: { format: :html } do
    resources :mail_boxes, defaults: { format: :html} do
      resources :inbox_messages, defaults: { format: :html}
    end
    resources :organization_files, defaults: { format: :html }
  end
  resources :events, defaults: { format: :html } do
    resources :comments, defaults: { format: :html }
    resources :date_options, defaults: { format: :html } do
      resources :vote_dates, defaults: { format: :html }
    end
    resources :event_files, defaults: { format: :html }
    resources :notifications, defaults: { format: :html }
  end

  resources :event_invitations, defaults: { format: :html} do
    resources :vote_dates, defaults: { format: :html }
  end
  resources :comments, defaults: { format: :html }
  resources :reports, defaults: { format: :html}
  resources :organizations, defaults: { format: :html } do
    resources :organization_files, defaults: { format: :html }
  end
  resources :subscriptions, defaults: { format: :html }

end

#still missing resources for vote_dates
