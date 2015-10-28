require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get recycling" do
    get :recycling
    assert_response :success
  end

  test "should get transport" do
    get :transport
    assert_response :success
  end

  test "should get construction" do
    get :construction
    assert_response :success
  end

  test "should get contacts" do
    get :contacts
    assert_response :success
  end

end
