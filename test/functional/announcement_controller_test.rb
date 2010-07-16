require 'test_helper'

class AnnouncementControllerTest < ActionController::TestCase
  test "should get announcements" do
    get :announcements
    assert_response :success
  end

  test "should get announcement" do
    get :announcement
    assert_response :success
  end

end
