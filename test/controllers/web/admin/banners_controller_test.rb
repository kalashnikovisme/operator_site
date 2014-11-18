require 'test_helper'

class Web::Admin::BannersControllerTest < ActionController::TestCase
  setup do
    @banner = create :banner
    @admin = create :admin
    sign_in @admin
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banner" do
    attributes = attributes_for :banner

    post :create, banner: attributes
    assert_response :redirect

    banner = Banner.last
    assert_equal attributes[:url], banner.url
  end

  test "should not create banner" do
    attributes = { url: @banner.url }

    post :create, banner: attributes
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @banner
    assert_response :success
  end

  test "should update banner by admin" do
    attributes = attributes_for :banner
    put :update, id: @banner, banner: attributes
    assert_response :redirect

    @banner.reload
    assert_equal attributes[:url], @banner.url
  end

  test "should not update banner with render edit" do
    attributes = attributes_for :banner
    attributes[:url] = nil
    put :update, id: @banner, banner: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy banner" do
    assert_difference('Banner.count', -1) do
      delete :destroy, id: @banner
    end

    assert_redirected_to admin_banners_path
  end
end
