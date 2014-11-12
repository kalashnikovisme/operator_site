require 'test_helper'

class Web::WelcomeControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_redirected_to "/pages/welcome"
  end
end
