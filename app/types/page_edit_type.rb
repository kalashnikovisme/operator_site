class PageEditType < Page
  include ApplicationType

  validates :body, presence: true

  permit :title, :body, :slug, :view
end
