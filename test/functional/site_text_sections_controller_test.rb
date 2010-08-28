require 'test_helper'

class SiteTextSectionsControllerTest < ActionController::TestCase
  setup do
    @site_text_section = site_text_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_text_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_text_section" do
    assert_difference('SiteTextSection.count') do
      post :create, :site_text_section => @site_text_section.attributes
    end

    assert_redirected_to site_text_section_path(assigns(:site_text_section))
  end

  test "should show site_text_section" do
    get :show, :id => @site_text_section.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @site_text_section.to_param
    assert_response :success
  end

  test "should update site_text_section" do
    put :update, :id => @site_text_section.to_param, :site_text_section => @site_text_section.attributes
    assert_redirected_to site_text_section_path(assigns(:site_text_section))
  end

  test "should destroy site_text_section" do
    assert_difference('SiteTextSection.count', -1) do
      delete :destroy, :id => @site_text_section.to_param
    end

    assert_redirected_to site_text_sections_path
  end
end
