class Web::Admin::WelcomeController < Web::Admin::ApplicationController
  def index
    @page = PageEditType.find_by_slug :welcome
  end
end
