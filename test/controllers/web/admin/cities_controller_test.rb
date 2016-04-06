require 'test_helper'

class Web::Admin::CitiesControllerTest < ActionController::TestCase
  setup do
    @city = create :city
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

  test "should create city" do
    attributes = attributes_for :city

    post :create, city: attributes
    assert_response :redirect

    city = City.last
    assert_equal attributes[:title], city.title
  end

  test "should not create city" do
    attributes = { }

    post :create, city: attributes
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @city
    assert_response :success
  end

  test "should update city by admin" do
    attributes = attributes_for :city
    put :update, id: @city, city: attributes
    assert_response :redirect

    @city.reload
    assert_equal attributes[:title], @city.title
  end

  test "should not update city with render edit" do
    attributes = attributes_for :city
    attributes[:title] = nil
    put :update, id: @city, city: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy city" do
    assert_difference('City.count', -1) do
      delete :destroy, id: @city
    end

    assert_redirected_to admin_cities_path
  end
end
