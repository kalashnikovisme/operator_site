class Web::Admin::MembersController < Web::Admin::ApplicationController
  def index
    @members = Member.all
  end

  def new
    @member = MemberEditType.new
  end

  def edit
    @member = MemberEditType.find params[:id]
  end

  def create
    @member = MemberEditType.new params[:member]
    if @member.save
      redirect_to admin_members_path
    else
      render action: :new
    end
  end

  def update
    @member = MemberEditType.find params[:id]
    if @member.update_attributes params[:member]
      redirect_to admin_members_path
    else
      render action: :edit
    end
  end

  def destroy
    @member = MemberEditType.find params[:id]
    @member.destroy
    redirect_to admin_members_path
  end
end
