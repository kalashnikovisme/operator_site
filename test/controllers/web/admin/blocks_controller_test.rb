require 'test_helper'

class Web::Admin::BlocksControllerTest < ActionController::TestCase
  setup do
    @block = create :block
    @admin = create :admin
    sign_in @admin
  end

  test 'should get index' do
    get :index
    assert_response :success
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create block' do
    attributes = attributes_for :block

    attributes[:order_number] = attributes[:order_number].to_i
    post :create, block: attributes
    assert_response :redirect

    block = Block.last
    assert_equal attributes[:title], block.title
  end

  test 'should not create block' do
    attributes = { title: @block.title }

    post :create, block: attributes
    assert_response :success
  end

  test 'should get edit by admin' do
    get :edit, id: @block
    assert_response :success
  end

  test 'should update block by admin' do
    attributes = attributes_for :block
    put :update, id: @block, block: attributes
    assert_response :redirect

    @block.reload
    assert_equal attributes[:title], @block.title
  end

  test 'should not update block with render edit' do
    attributes = attributes_for :block
    attributes[:title] = nil
    put :update, id: @block, block: attributes

    assert_response :success

    assert_template :edit
  end

  test 'should destroy block' do
    assert_difference('Block.count', -1) do
      delete :destroy, id: @block
    end

    assert_redirected_to admin_blocks_path
  end
end
