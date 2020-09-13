require 'test_helper'

class TeacherAvailabilitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get teacher_availabilities_new_url
    assert_response :success
  end

  test "should get create" do
    get teacher_availabilities_create_url
    assert_response :success
  end

end
