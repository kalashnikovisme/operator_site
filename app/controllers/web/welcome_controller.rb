class Web::WelcomeController < Web::ApplicationController
  def index
    @page = MainPageEditType.find_by_slug :welcome
  end
end
