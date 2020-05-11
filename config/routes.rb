Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :users, defaults: { format: :html } do
    resources :mail_boxes, defaults: { format: :html} do
      resources :inbox_messages, defaults: { format: :html}
    end
  end
  resources :events, defaults: { format: :html } do
    resources :comments, defaults: { format: :html }
    resources :date_options, defaults: { format: :html }
    resources :event_files, defaults: { format: :html }
  end

  resources :event_invitations, defaults: { format: :html}
  resources :comments, defaults: { format: :html }

end

#still missing resources for notifications,subscriptions,organizations
# organization_files , reports, vote_dates
