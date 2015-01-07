require 'test_helper'

class Web::DeclaresControllerTest < ActionController::TestCase
  setup do
    @declare = create :declare
  end
  test "should create declare" do
    attributes = attributes_for :declare

    post :create, declare: attributes
    assert_response :redirect

    declare = Declare.last
    assert_equal attributes[:user_id], declare.user_id
  end

  test "should not create declare" do
    attributes = { user_id: @declare.user_id }

    post :create, declare: attributes
    assert_response :success
  end
end
