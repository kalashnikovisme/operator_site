class Web::Admin::ApplicationController < Web::ApplicationController
  before_action :authenticate_admin!
  layout 'web/admin/application'
end
