require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
 
 test "create user" do 
    get new_user_path
    assert_response :success
 end
end
