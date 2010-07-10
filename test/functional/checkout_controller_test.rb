require 'test_helper'

class CheckoutControllerTest < ActionController::TestCase
  test "should get view_cart" do
    get :view_cart
    assert_response :success
  end

  test "should get personal_info" do
    get :personal_info
    assert_response :success
  end

  test "should get billing_info" do
    get :billing_info
    assert_response :success
  end

  test "should get review_order" do
    get :review_order
    assert_response :success
  end

  test "should get checkout" do
    get :checkout
    assert_response :success
  end

end
