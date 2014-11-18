class Web::Admin::BannersController < Web::Admin::ApplicationController
  def index
    @banners = Banner.all
  end

  def new
    @banner = BannerEditType.new
  end

  def edit
    @banner = BannerEditType.find params[:id]
  end

  def create
    @banner = BannerEditType.new params[:banner]
    if @banner.save
      redirect_to admin_banners_path
    else
      render action: :new
    end
  end

  def update
    @banner = BannerEditType.find params[:id]
    if @banner.update_attributes params[:banner]
      redirect_to admin_banners_path
    else
      render action: :edit
    end
  end

  def destroy
    @banner = BannerEditType.find params[:id]
    @banner.destroy
    redirect_to admin_banners_path
  end
end
