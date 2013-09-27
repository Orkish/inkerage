Inkerage::Application.routes.draw do
  devise_for :artists, :controllers => { :sessions => "artists/sessions", :registrations => "artists/registrations"}
  devise_for :users, :controllers => { :sessions => "users/sessions", :registrations => "users/registrations" }
  
  get '/users/profile', :to => 'users#profile', :as => "user_profile"
  post '/new', :to => 'users#profile'

  get '/artists/profile', :to => 'artists#profile', :as => "artist_profile"
  
  get '/index', :to => 'designs#index', :as => "design_index"
  post '/users/profile', :to => 'designs#add_fav'
  delete '/users/profile/:id', :to => 'users#delete', :as => "delete_pic"


  root :to => "home#index"

end


#         new_artist_session GET    /artists/sign_in(.:format)       artists/sessions#new
#             artist_session POST   /artists/sign_in(.:format)       artists/sessions#create
#     destroy_artist_session DELETE /artists/sign_out(.:format)      artists/sessions#destroy
#            artist_password POST   /artists/password(.:format)      devise/passwords#create
#        new_artist_password GET    /artists/password/new(.:format)  devise/passwords#new
#       edit_artist_password GET    /artists/password/edit(.:format) devise/passwords#edit
#                            PUT    /artists/password(.:format)      devise/passwords#update
# cancel_artist_registration GET    /artists/cancel(.:format)        artists/registrations#cancel
#        artist_registration POST   /artists(.:format)               artists/registrations#create
#    new_artist_registration GET    /artists/sign_up(.:format)       artists/registrations#new
#   edit_artist_registration GET    /artists/edit(.:format)          artists/registrations#edit
#                            PUT    /artists(.:format)               artists/registrations#update
#                            DELETE /artists(.:format)               artists/registrations#destroy
#           new_user_session GET    /users/sign_in(.:format)         users/sessions#new
#               user_session POST   /users/sign_in(.:format)         users/sessions#create
#       destroy_user_session DELETE /users/sign_out(.:format)        users/sessions#destroy
#              user_password POST   /users/password(.:format)        devise/passwords#create
#          new_user_password GET    /users/password/new(.:format)    devise/passwords#new
#         edit_user_password GET    /users/password/edit(.:format)   devise/passwords#edit
#                            PUT    /users/password(.:format)        devise/passwords#update
#   cancel_user_registration GET    /users/cancel(.:format)          users/registrations#cancel
#          user_registration POST   /users(.:format)                 users/registrations#create
#      new_user_registration GET    /users/sign_up(.:format)         users/registrations#new
#     edit_user_registration GET    /users/edit(.:format)            users/registrations#edit
#                            PUT    /users(.:format)                 users/registrations#update
#                            DELETE /users(.:format)                 users/registrations#destroy
#               user_profile GET    /users/profile(.:format)         users#profile
#                        new POST   /new(.:format)                   users#profile
#             artist_profile GET    /artists/profile(.:format)       artists#profile
#               design_index GET    /index(.:format)                 designs#index
#              users_profile POST   /users/profile(.:format)         designs#add_fav
#                 delete_pic DELETE /users/profile/:id(.:format)     users#delete
#                       root        /                                home#index








