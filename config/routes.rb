Rails.application.routes.draw do
	root 'static_pages#test'
  get 'static_pages/myimages'
  get 'static_pages/test'
end
