class Web::WelcomeController < Web::ApplicationController
  def index
    @page = Page.find_by_slug :welcome
    @members = Member.all
    @banner = Banner.active.shuffle.first
    @videos = VideoDecorator.decorate_collection Video.showed.order('order_number ASC')
    @showed_with_all_video = VideoDecorator.decorate_collection Video.showed_with_all
    @project_types = [:showed_with_all] + Video.project_type.values
    @user = UserEditType.new
    @advantages = Advantage.all
    @blocks = Block.where(state: :visible).order('order_number ASC')
    @blogs = BlogDecorator.decorate_collection Blog.last 4
  end
end
