# frozen_string_literal: true

Admin::Engine.routes.draw do
  resource :dashboard, only: [:show]
end
