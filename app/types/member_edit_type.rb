class MemberEditType < Member
  include ApplicationType

  permit :user_id, :position, :avatar
end
