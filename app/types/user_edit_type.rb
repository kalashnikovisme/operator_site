class UserEditType < User
  include ApplicationType

  permit :email, :password, :role, :name, :city

  def user
    ::User.find_by(email: email.mb_chars.downcase)
  end
end
