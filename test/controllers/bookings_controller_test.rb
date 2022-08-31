require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get join" do
    get bookings_join_url
    assert_response :success
  end
end
