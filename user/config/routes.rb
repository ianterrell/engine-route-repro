# frozen_string_literal: true

User::Engine.routes.draw do
  resource :dashboard, only: [:show]
end
