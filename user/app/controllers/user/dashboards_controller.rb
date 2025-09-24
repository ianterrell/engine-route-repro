module User
  class DashboardsController < ApplicationController
    def show
      render plain: "User Dashboard"
    end
  end
end
