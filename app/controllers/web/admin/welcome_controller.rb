class Web::Admin::WelcomeController < Web::Admin::ApplicationController
  def index
    @page = MainPageEditType.find_by_slug :welcome
  end
end
