module Admin
  class DashboardsController < ApplicationController
    def show
      render plain: user.dashboard_path
    end
  end
end
