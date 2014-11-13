class Web::Admin::ApplicationController < Web::ApplicationController
  skip_before_filter :show_video
  before_action :authenticate_admin!
  layout 'web/admin/application'
end
