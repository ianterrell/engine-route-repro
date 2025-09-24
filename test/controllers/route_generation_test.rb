require "test_helper"

module User
  class RouteGenerationTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should not change route generation" do
      assert_equal "/admin/dashboard", admin.dashboard_path
      assert_equal "/dashboard", user.dashboard_path

      get admin.dashboard_path
      assert_response :success
      assert_equal "Admin Dashboard", @response.body

      assert_equal "/dashboard", user.dashboard_path
    end
  end
end
