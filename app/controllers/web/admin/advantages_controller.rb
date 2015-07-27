class Web::Admin::AdvantagesController < Web::Admin::ApplicationController
  def index
    @advantages = Advantage.all
  end

  def new
    @advantage = AdvantageEditType.new
  end

  def edit
    @advantage = AdvantageEditType.find params[:id]
  end

  def create
    @advantage = AdvantageEditType.new params[:advantage]
    if @advantage.save
      redirect_to admin_advantages_path
    else
      render action: :new
    end
  end

  def update
    @advantage = AdvantageEditType.find params[:id]
    if @advantage.update_attributes params[:advantage]
      redirect_to admin_advantages_path
    else
      render action: :edit
    end
  end

  def destroy
    @advantage = AdvantageEditType.find params[:id]
    @advantage.destroy
    redirect_to admin_advantages_path
  end
end
