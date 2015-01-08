require 'test_helper'

class Web::WelcomeControllerTest < ActionController::TestCase
  setup do
  end
  test 'should get index' do
    create :banner
    get :index
    assert_response :success, @response.body
  end
end
