class Web::UsersController < Web::ApplicationController
  def create
    @user = UserEditType.new params[:user]
    if @user.save
      head :ok
    else
      head :bad_request
    end
  end
end
