Rails.application.routes.draw do
  # Components
  get 'pages/components'

  # As a visitor, I can access the landing page
  root to: "pages#home"

  # As a visitor, I can sign up // As a user, I can sign in
  # As a user, I can set up my account (wine profile/survey)
  devise_for :users

  # As a user, I can sharpen my profile with feedback (feedback de l’event / a few more questions to answer)
  resources :users, only: %i[edit update]

  # As a visitor, I can see all the events
  # As a visitor, I can access the event page with limited information
  # As a user, I can access the event page with all information
  resources :events, only: %i[index show] do
    # As a user, I can join an event
    resources :bookings, only: %i[new create] # => TODO: Delete NEW if not needed
  end

  # As a user, I can see the listing of events I will attend
  # As a user I can see the events I attended in the past
  # As a user, I can leave an event
  resources :bookings, only: %i[index delete]

  # As a user, I can bring a bottle that wasn’t requested by the host and upload its details on the event page
  # As a user, I can claim one of the bottles requested by the host on the event page
  resources :bottles, only: %i[new create edit update] # => TODO: Delete NEW and EDIT if not needed + check if EVENT nesting is needed

  # As a user, I can discuss via the chat with others attendees
  resources :chatrooms, only: %i[show] do
    resources :messages, only: %i[index new create]
  end

  # As a user, I can bookmark an event
  resources :bookmarks, only: %i[index new create]
  # As a host, I can create an event
  # As a host, I can update an event
  # As a host, I can see all the events I created
  namespace :host do
    resources :events, only: %i[index new create edit update] do
      # As a host, after an event is created, I can add bottles
      resources :bottles, only: %i[new create]
    end
  end

end
