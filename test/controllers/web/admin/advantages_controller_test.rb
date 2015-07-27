require 'test_helper'

class Web::Admin::AdvantagesControllerTest < ActionController::TestCase
  setup do
    @advantage = create :advantage
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

  test "should create advantage" do
    attributes = attributes_for :advantage

    post :create, advantage: attributes
    assert_response :redirect

    advantage = Advantage.last
    assert_equal attributes[:text], advantage.text
  end

  test "should not create advantage" do
    attributes = { text: @advantage.text }

    post :create, advantage: attributes
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @advantage
    assert_response :success
  end

  test "should update advantage by admin" do
    attributes = attributes_for :advantage
    put :update, id: @advantage, advantage: attributes
    assert_response :redirect

    @advantage.reload
    assert_equal attributes[:text], @advantage.text
  end

  test "should not update advantage with render edit" do
    attributes = attributes_for :advantage
    attributes[:text] = nil
    put :update, id: @advantage, advantage: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy advantage" do
    assert_difference('Advantage.count', -1) do
      delete :destroy, id: @advantage
    end

    assert_redirected_to admin_advantages_path
  end
end
