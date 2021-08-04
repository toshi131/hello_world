require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD

  test "should get new" do
    get new_user_path
=======
  test "should get new" do

    get signup_path
>>>>>>> log-in-log-out
    assert_response :success
  end
end
