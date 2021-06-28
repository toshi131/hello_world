require "test_helper"

class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @base_title = "ruby on rails tutorail sample app"
  end

  test "shoud get home" do 
    get :home
    assert_response :success
    assert_select "title","Home | #{@base_title}"
  end
  
  test "shoud get help" do
    get :help
    assert_response :success
    assert_select "title","Help | #{@base_title}"

  end

test "shoud get about" do
    get :about
    assert_response :success
    assert_select "title","About | #{@base_title}"
  end

end