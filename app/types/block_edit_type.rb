class BlockEditType < Block
  include ApplicationType

  permit :title, :text, :state, :order_number, :state_event
end
