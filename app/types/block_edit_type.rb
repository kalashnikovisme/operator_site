class BlockEditType < Block
  include ApplicationType

  permit :title, :text, :state, :order_number, :state_event, :view_name
end
