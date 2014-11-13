require 'test_helper'

class Web::WelcomeControllerTest < ActionController::TestCase
  setup do
    create :video
  end
  test 'should get index' do
    main_page = create :page
    main_page.slug = 'welcome'
    main_page.save
    get :index
    assert_response :success, @response.body
  end
end
