class MainPageEditType < Page
  include ApplicationType

  permit :title, :body, :slug, :view
end
