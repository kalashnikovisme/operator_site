class Web::WelcomeController < Web::ApplicationController
  def index
    @page = Page.find_by_slug :welcome
    @members = Member.all
    @banner = Banner.active.shuffle.first
    @videos = VideoDecorator.decorate_collection Video.order('order_number ASC')
    @project_types = Video.project_type.values
    @user = UserEditType.new
  end
end
