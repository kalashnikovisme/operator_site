class Web::Admin::MembersController < Web::Admin::ApplicationController
  def index
    @members = Member.all
  end

  def new
    @user = User.new
    @user.build_member
  end

  def edit
    @member = MemberEditType.find params[:id]
    @user = UserEditType.find @member.user_id
  end

  def create
    @user = User.new member_params
    if @user.save
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

  private

  def member_params
    params.require(:user).permit(:id, :name, :email, :password, :city, member_attributes: [ :position, :avatar, :avatar_cache, :user_id ])
  end
end
