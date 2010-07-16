require 'test_helper'

class AnnouncementsControllerTest < ActionController::TestCase
  test "should get announcements" do
    get :announcements
    assert_response :success
  end

  test "should get announcement" do
    get :announcement
    assert_response :success
  end

end
