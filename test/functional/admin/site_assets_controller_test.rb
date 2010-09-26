require 'test_helper'

class Admin::SiteAssetsControllerTest < ActionController::TestCase
  test "should get upload_image" do
    get :upload_image
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
