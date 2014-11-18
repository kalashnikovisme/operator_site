require 'test_helper'

class Web::BlogsControllerTest < ActionController::TestCase
  setup do
    @blog = create :blog
    create :proposition
  end

  test 'should get show' do
    get :show, id: @blog
    assert_response :success, @response.body
  end

  test 'should get index' do
    get :index
    assert_response :success, @response.body
  end
end
