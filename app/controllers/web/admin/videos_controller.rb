class Web::Admin::VideosController < Web::Admin::ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = VideoEditType.new
  end

  def edit
    @video = VideoEditType.find params[:id]
  end

  def create
    @video = VideoEditType.new params[:video]
    if @video.save
      redirect_to admin_videos_path
    else
      render action: :new
    end
  end

  def update
    @video = VideoEditType.find params[:id]
    if @video.update_attributes params[:video]
      redirect_to admin_videos_path
    else
      render action: :edit
    end
  end

  def destroy
    @video = VideoEditType.find params[:id]
    @video.destroy
    redirect_to admin_videos_path
  end
end
