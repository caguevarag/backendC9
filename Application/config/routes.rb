# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                   answers GET    /answers(.:format)                                                                       answers#index
#                           POST   /answers(.:format)                                                                       answers#create
#                    answer GET    /answers/:id(.:format)                                                                   answers#show
#                           PATCH  /answers/:id(.:format)                                                                   answers#update
#                           PUT    /answers/:id(.:format)                                                                   answers#update
#                           DELETE /answers/:id(.:format)                                                                   answers#destroy
#                  comments GET    /comments(.:format)                                                                      comments#index
#                           POST   /comments(.:format)                                                                      comments#create
#                   comment GET    /comments/:id(.:format)                                                                  comments#show
#                           PATCH  /comments/:id(.:format)                                                                  comments#update
#                           PUT    /comments/:id(.:format)                                                                  comments#update
#                           DELETE /comments/:id(.:format)                                                                  comments#destroy
#                 documents GET    /documents(.:format)                                                                     documents#index
#                           POST   /documents(.:format)                                                                     documents#create
#                  document GET    /documents/:id(.:format)                                                                 documents#show
#                           PATCH  /documents/:id(.:format)                                                                 documents#update
#                           PUT    /documents/:id(.:format)                                                                 documents#update
#                           DELETE /documents/:id(.:format)                                                                 documents#destroy
#                 questions GET    /questions(.:format)                                                                     questions#index
#                           POST   /questions(.:format)                                                                     questions#create
#                  question GET    /questions/:id(.:format)                                                                 questions#show
#                           PATCH  /questions/:id(.:format)                                                                 questions#update
#                           PUT    /questions/:id(.:format)                                                                 questions#update
#                           DELETE /questions/:id(.:format)                                                                 questions#destroy
#                statistics GET    /statistics(.:format)                                                                    statistics#index
#                           POST   /statistics(.:format)                                                                    statistics#create
#                 statistic GET    /statistics/:id(.:format)                                                                statistics#show
#                           PATCH  /statistics/:id(.:format)                                                                statistics#update
#                           PUT    /statistics/:id(.:format)                                                                statistics#update
#                           DELETE /statistics/:id(.:format)                                                                statistics#destroy
#                  subjects GET    /subjects(.:format)                                                                      subjects#index
#                           POST   /subjects(.:format)                                                                      subjects#create
#                   subject GET    /subjects/:id(.:format)                                                                  subjects#show
#                           PATCH  /subjects/:id(.:format)                                                                  subjects#update
#                           PUT    /subjects/:id(.:format)                                                                  subjects#update
#                           DELETE /subjects/:id(.:format)                                                                  subjects#destroy
#                    topics GET    /topics(.:format)                                                                        topics#index
#                           POST   /topics(.:format)                                                                        topics#create
#                     topic GET    /topics/:id(.:format)                                                                    topics#show
#                           PATCH  /topics/:id(.:format)                                                                    topics#update
#                           PUT    /topics/:id(.:format)                                                                    topics#update
#                           DELETE /topics/:id(.:format)                                                                    topics#destroy
#                     users GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                      user GET    /users/:id(.:format)                                                                     users#show
#                           PATCH  /users/:id(.:format)                                                                     users#update
#                           PUT    /users/:id(.:format)                                                                     users#update
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do

  resources :answers
  resources :comments
  resources :documents
  resources :questions
  resources :statistics
  resources :subjects
  resources :topics
  resources :users
 
end
