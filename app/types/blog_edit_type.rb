class BlogEditType < Blog
  include ApplicationType

  permit :title, :body, :photo
end
