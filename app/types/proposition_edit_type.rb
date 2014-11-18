class PropositionEditType < Proposition
  include ApplicationType

  permit :text, :begin_date, :end_date
end
