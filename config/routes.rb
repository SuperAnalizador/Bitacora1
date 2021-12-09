Rails.application.routes.draw do
  get 'message/index'
  get 'message/show'
  get 'message/edit'
  get 'message/delete'
  get 'post/index'
  get 'post/show'
  get 'post/edit'
  get 'post/delete'
  get 'blog/index'
  get 'blog/show'
  get 'blog/edit'
  get 'blog/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
