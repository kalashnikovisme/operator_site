require 'test_helper'

class Web::Admin::PropositionsControllerTest < ActionController::TestCase
  setup do
    @proposition = create :proposition
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

  test "should create proposition" do
    attributes = attributes_for :proposition

    post :create, proposition: attributes
    assert_response :redirect

    proposition = Proposition.last
    assert_equal attributes[:text], proposition.text
  end

  test "should not create proposition" do
    attributes = { text: @proposition.text }

    post :create, proposition: attributes
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @proposition
    assert_response :success
  end

  test "should update proposition by admin" do
    attributes = attributes_for :proposition
    put :update, id: @proposition, proposition: attributes
    assert_response :redirect

    @proposition.reload
    assert_equal attributes[:text], @proposition.text
  end

  test "should not update proposition with render edit" do
    attributes = attributes_for :proposition
    attributes[:text] = nil
    put :update, id: @proposition, proposition: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy proposition" do
    assert_difference('Proposition.count', -1) do
      delete :destroy, id: @proposition
    end

    assert_redirected_to admin_propositions_path
  end
end
