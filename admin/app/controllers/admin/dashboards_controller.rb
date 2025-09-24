module Admin
  class DashboardsController < ApplicationController
    def show
      render plain: "Admin Dashboard"
    end
  end
end
