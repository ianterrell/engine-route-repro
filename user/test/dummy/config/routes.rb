Rails.application.routes.draw do
  mount Admin::Engine => "/admin"
  mount User::Engine => "/"
end
