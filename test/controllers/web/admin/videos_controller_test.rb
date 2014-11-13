require 'test_helper'

class Web::Admin::VideosControllerTest < ActionController::TestCase
  setup do
    @video = create :video
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

  test "should create video" do
    attributes = attributes_for :video

    post :create, video: attributes
    assert_response :redirect

    video = Video.last
    assert_equal attributes[:link], video.link
  end

  test "should not create video" do
    attributes = attributes_for :video
    attributes[:link] = nil

    post :create, video: attributes
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @video
    assert_response :success
  end

  test "should update video by admin" do
    attributes = attributes_for :video
    put :update, id: @video, video: attributes
    assert_response :redirect

    @video.reload
    assert_equal attributes[:link], @video.link
  end

  test "should not update video with render edit" do
    attributes = attributes_for :video
    attributes[:link] = nil
    put :update, id: @video, video: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy video" do
    assert_difference('Video.count', -1) do
      delete :destroy, id: @video
    end

    assert_redirected_to admin_videos_path
  end
end
