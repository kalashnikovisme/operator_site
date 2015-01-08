require 'test_helper'

class Web::Admin::MembersControllerTest < ActionController::TestCase
  setup do
    @member = create :member
    @member.user = create :user
    @member.save
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

  test "should create member" do
    attributes = attributes_for :user
    attributes[:member_attributes] = attributes_for :member

    post :create, user: attributes
    assert_response :redirect

    member = Member.last
    assert_equal attributes[:member_attributes][:position], member.position
  end

  test "should not create member" do
    attributes = { position: @member.position }

    post :create, user: attributes
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member by admin" do
    attributes = attributes_for :member
    put :update, id: @member, member: attributes
    assert_response :redirect

    @member.reload
    assert_equal attributes[:position], @member.position
  end

  test "should not update member with render edit" do
    attributes = attributes_for :member
    attributes[:position] = nil
    put :update, id: @member, member: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to admin_members_path
  end
end
