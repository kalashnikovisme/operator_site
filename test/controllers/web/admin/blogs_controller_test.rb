require 'test_helper'

class Web::Admin::BlogsControllerTest < ActionController::TestCase
  setup do
    @blog = create :blog
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

  test "should create blog" do
    attributes = attributes_for :blog

    post :create, blog: attributes
    assert_response :redirect

    blog = Blog.last
    assert_equal attributes[:title], blog.title
  end

  test "should not create blog" do
    attributes = { title: @blog.title }

    post :create, blog: attributes
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @blog
    assert_response :success
  end

  test "should update blog by admin" do
    attributes = attributes_for :blog
    put :update, id: @blog, blog: attributes
    assert_response :redirect

    @blog.reload
    assert_equal attributes[:title], @blog.title
  end

  test "should not update blog with render edit" do
    attributes = attributes_for :blog
    attributes[:title] = nil
    put :update, id: @blog, blog: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy blog" do
    assert_difference('Blog.count', -1) do
      delete :destroy, id: @blog
    end

    assert_redirected_to admin_blogs_path
  end
end
