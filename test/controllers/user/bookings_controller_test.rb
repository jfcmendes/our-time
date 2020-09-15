require 'test_helper'

class User::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_bookings_index_url
    assert_response :success
  end

end
