require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get categories" do
    get :categories
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get add_to_cart" do
    get :add_to_cart
    assert_response :success
  end

end
