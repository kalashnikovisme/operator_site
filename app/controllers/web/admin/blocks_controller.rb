class Web::Admin::BlocksController < Web::Admin::ApplicationController
  def index
    @blocks = Block.all
  end

  def new
    @block = BlockEditType.new
  end

  def edit
    @block = BlockEditType.find params[:id]
  end

  def create
    @block = BlockEditType.new params[:block]
    if @block.save
      redirect_to admin_blocks_path
    else
      render action: :new
    end
  end

  def update
    @block = BlockEditType.find params[:id]
    if @block.update_attributes params[:block]
      redirect_to admin_blocks_path
    else
      render action: :edit
    end
  end

  def destroy
    @block = BlockEditType.find params[:id]
    @block.destroy
    redirect_to admin_blocks_path
  end
end
