require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: {user: { name:  "toshi"}}
    end
  end

  # test "valid signup information" do
  #   get signup_path
  #   assert_difference 'User.count', 1 do
  #     post_via_redirect users_path, params:{user: { name:  "Example User",
  #     email: "user@example.com",
  #     password:"password",
  #     password_confirmation: "password" }}
  #   end 
  # end
end
