class Web::BlogsController < Web::ApplicationController
  skip_before_filter :show_video

  def index
    @blogs = BlogDecorator.decorate_collection Blog.all
  end

  def show
    @blog = Blog.find params[:id]
    @topic_blogs = BlogDecorator.decorate_collection Blog.last 3
  end
end
