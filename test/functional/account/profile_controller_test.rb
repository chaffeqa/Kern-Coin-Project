require 'test_helper'

class Account::ProfileControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get bought_items" do
    get :bought_items
    assert_response :success
  end

  test "should get won_auctions" do
    get :won_auctions
    assert_response :success
  end

  test "should get bids" do
    get :bids
    assert_response :success
  end

end
