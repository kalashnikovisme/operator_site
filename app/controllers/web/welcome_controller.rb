class Web::WelcomeController < Web::ApplicationController
  def index
    @page = Page.find_by_slug :welcome
    @members = Member.all
    @banner = Banner.active.first
  end
end
