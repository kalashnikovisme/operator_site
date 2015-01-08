class DeclareSendType < Declare
  include ApplicationType

  permit :user_id, :proposition_id
end
