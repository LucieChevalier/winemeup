require "test_helper"

class BottlesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get bottles_create_url
    assert_response :success
  end
end
