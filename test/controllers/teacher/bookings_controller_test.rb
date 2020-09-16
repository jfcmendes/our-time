require 'test_helper'

class Teacher::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teacher_bookings_index_url
    assert_response :success
  end

end
