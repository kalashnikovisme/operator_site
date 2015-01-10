module Web::WelcomeHelper
  def all_project_types_in_filter(project_types)
    @project_types.join ' '
  end
end
