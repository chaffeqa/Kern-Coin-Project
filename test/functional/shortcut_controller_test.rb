require 'test_helper'

class ShortcutControllerTest < ActionController::TestCase
  test "should get route" do
    get :route
    assert_response :success
  end

  test "should get error" do
    get :error
    assert_response :success
  end

end
