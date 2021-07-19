require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new({name:"stuti jain", email:"stuti123@exmple.com", 
    password: "foobar2341", password_confirmation: "foobar2341"})
  end 

  test "Should be valid" do
    assert(@user.valid?)
  end

  test "name should be present" do 
    @user.name = "  "
    assert_not(@user.valid?)
  end
  
  test "Email shold be present" do
    @user.email = "  "
    assert_not(@user.valid?)
  end  
  
  test "Email shold not be too long" do
    @user.email = "a" * 255 + "@exmple.com"
    assert_not(@user.valid?)
  end

  test "Email shold not be too short" do
    @user.email = ""

    assert_not(@user.valid?)
  end
  
  test "email should be unique" do
    user = @user.dup
    user.save
    assert_not(@user.valid?)
  end

  # test "email addresses should be unique" do
  #   user = @user.dup
  #   user.email = @user.email.upcase
  #   user.save
  #   assert_not(@user.valid?)
  # end

  test "name should not be too long" do 
    @user.name = "kooooooooooooooooooooooooooooooooo"
    assert_not(@user.valid?)
  end

  test "name should not be too short" do 
    @user.name = " "
    assert_not(@user.valid?)
  end

  test "password should be present(nonblank)" do
    @user.password = @user.password_confirmation = " "  
    assert_not(@user.valid?)
  end
  
  test "password should not be too short" do
    @user.password = @user.password_confirmation = "a" * 9
    assert_not(@user.valid?)    
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
    foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|    
      @user.email = invalid_address
      assert_not(@user.valid?, "#{invalid_address} should be not valid ")

    end
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
    first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|    
      @user.email = valid_address
      assert(@user.valid?, "#{valid_address} should be valid ")

    end
  end

end
