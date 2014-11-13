require 'test_helper'

class Web::WelcomeControllerTest < ActionController::TestCase
  test 'should get index' do
    main_page = create :page
    main_page.slug = 'welcome'
    main_page.save
    get :index
    assert_response :success, @response.body
  end
end
