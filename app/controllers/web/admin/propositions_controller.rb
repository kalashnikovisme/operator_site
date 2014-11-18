class Web::Admin::PropositionsController < ApplicationController
  def index
    @propositions = Proposition.all
  end

  def new
    @proposition = PropositionEditType.new
  end

  def edit
    @proposition = PropositionEditType.find params[:id]
  end

  def create
    @proposition = PropositionEditType.new params[:proposition]
    if @proposition.save
      redirect_to admin_propositions_path
    else
      render action: :new
    end
  end

  def update
    @proposition = PropositionEditType.find params[:id]
    if @proposition.update_attributes params[:proposition]
      redirect_to admin_propositions_path
    else
      render action: :edit
    end
  end

  def destroy
    @proposition = PropositionEditType.find params[:id]
    @proposition.destroy
    redirect_to admin_propositions_path
  end
end
