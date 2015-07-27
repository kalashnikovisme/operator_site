class AdvantageEditType < Advantage
  include ApplicationType

  permit :title, :text, :icon
end
