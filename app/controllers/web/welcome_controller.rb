class Web::WelcomeController < Web::ApplicationController
  def index
    @page = Page.find_by_slug :welcome
    @members = Member.all
    @banner = Banner.active.first
    @videos = VideoDecorator.decorate_collection Video.all
    @project_types = Video.project_type.values
  end
end
