class Web::Admin::BlogsController < Web::Admin::ApplicationController
  def index
    @blogs = BlogDecorator.decorate_collection Blog.all
  end

  def new
    @blog = BlogEditType.new
  end

  def edit
    @blog = BlogEditType.find params[:id]
  end

  def create
    @blog = BlogEditType.new params[:blog]
    if @blog.save
      redirect_to admin_blogs_path
    else
      render action: :new
    end
  end

  def update
    @blog = BlogEditType.find params[:id]
    if @blog.update_attributes params[:blog]
      redirect_to admin_blogs_path
    else
      render action: :edit
    end
  end

  def destroy
    @blog = BlogEditType.find params[:id]
    @blog.destroy
    redirect_to admin_blogs_path
  end
end
