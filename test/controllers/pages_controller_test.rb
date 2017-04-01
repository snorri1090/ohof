require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get features" do
    get :features
    assert_response :success
  end

  test "should get tips" do
    get :tips
    assert_response :success
  end

end
