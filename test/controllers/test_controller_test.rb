require "test_helper"

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get compass" do
    get test_compass_url
    assert_response :success
  end
end
