class MemberEditType < Member
  include ApplicationType

  permit :user_id, :position, :avatar, :avatar_cache
end
