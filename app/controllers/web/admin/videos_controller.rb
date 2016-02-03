class Web::Admin::VideosController < Web::Admin::ApplicationController
  def index
    @videos = Video.order('id DESC')
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
      move_videos @video
      redirect_to admin_videos_path
    else
      render action: :new
    end
  end

  def update
    @video = VideoEditType.find params[:id]
    if @video.update_attributes params[:video]
      move_videos @video
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

  private

  def move_videos(video)
    conflict_video = Video.where(order_number: video.order_number).where.not(id: video.id).first
    if conflict_video.present?
      conflict_video.order_number += 1
      conflict_video.save
      move_videos conflict_video
    end
  end
end
