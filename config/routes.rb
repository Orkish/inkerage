Inkerage::Application.routes.draw do
  devise_for :artists, :controllers => { :sessions => "artists/sessions", :registrations => "artists/registrations"}
  devise_for :users, :controllers => { :sessions => "users/sessions", :registrations => "users/registrations" }
  
  get '/users/profile', :to => 'users#profile', :as => "user_profile"
  # get '/new', :to => 'users#new', :as => "users"
  post '/new', :to => 'users#profile'

  get '/artists/profile', :to => 'artists#profile', :as => "artist_profile"
  
  get '/index', :to => 'designs#index', :as => "design_index"
  post '/users/profile', :to => 'designs#add_fav'
  delete '/users/profile/:id', :to => 'users#delete', :as => "delete_pic"


  root :to => "home#index"

end




#   new_artist_session GET    /artists/sign_in(.:format)       devise/sessions#new
#             artist_session POST   /artists/sign_in(.:format)       devise/sessions#create
#     destroy_artist_session DELETE /artists/sign_out(.:format)      devise/sessions#destroy
#            artist_password POST   /artists/password(.:format)      devise/passwords#create
#        new_artist_password GET    /artists/password/new(.:format)  devise/passwords#new
#       edit_artist_password GET    /artists/password/edit(.:format) devise/passwords#edit
#                            PUT    /artists/password(.:format)      devise/passwords#update
# cancel_artist_registration GET    /artists/cancel(.:format)        devise/registrations#cancel
#        artist_registration POST   /artists(.:format)               devise/registrations#create
#    new_artist_registration GET    /artists/sign_up(.:format)       devise/registrations#new
#   edit_artist_registration GET    /artists/edit(.:format)          devise/registrations#edit
#                            PUT    /artists(.:format)               devise/registrations#update
#                            DELETE /artists(.:format)               devise/registrations#destroy
#           new_user_session GET    /users/sign_in(.:format)         devise/sessions#new
#               user_session POST   /users/sign_in(.:format)         devise/sessions#create
#       destroy_user_session DELETE /users/sign_out(.:format)        devise/sessions#destroy
#              user_password POST   /users/password(.:format)        devise/passwords#create
#          new_user_password GET    /users/password/new(.:format)    devise/passwords#new
#         edit_user_password GET    /users/password/edit(.:format)   devise/passwords#edit
#                            PUT    /users/password(.:format)        devise/passwords#update
#   cancel_user_registration GET    /users/cancel(.:format)          devise/registrations#cancel
#          user_registration POST   /users(.:format)                 devise/registrations#create
#      new_user_registration GET    /users/sign_up(.:format)         devise/registrations#new
#     edit_user_registration GET    /users/edit(.:format)            devise/registrations#edit
#                            PUT    /users(.:format)                 devise/registrations#update
#                            DELETE /users(.:format)                 devise/registrations#destroy
#                       root        /                                users#index






