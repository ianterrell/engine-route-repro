```ruby
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
```

```bash
> rails t
Running 1 tests in a single process (parallelization threshold is 50)
Run options: --seed 18215

# Running:

F

Failure:
User::RouteGenerationTest#test_should_not_change_route_generation [test/controllers/route_generation_test.rb:15]:
Expected: "/dashboard"
  Actual: "/admin/dashboard"


bin/rails test test/controllers/route_generation_test.rb:7



Finished in 0.040116s, 24.9277 runs/s, 124.6385 assertions/s.
1 runs, 5 assertions, 1 failures, 0 errors, 0 skips
```
