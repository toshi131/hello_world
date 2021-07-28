require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
 
 test "create user" do 
=======
  test "should get new" do
>>>>>>> sign_up
    get new_user_path
    assert_response :success
 end
end
