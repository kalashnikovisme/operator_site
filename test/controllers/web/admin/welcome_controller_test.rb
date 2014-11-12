require 'test_helper'

class Web::Admin::WelcomeControllerTest < ActionController::TestCase
  setup do
    admin = create :admin
    sign_in admin
  end
  test 'should get index' do
    main_page = create :page
    main_page.slug = 'welcome'
    main_page.save
    get :index
    assert_response :success, @response.body
  end
end
