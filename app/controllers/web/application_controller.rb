class Web::ApplicationController < ApplicationController
  before_filter :show_video
  include Concerns::AuthManagment

  def show_video
    @video = Video.offset(rand(Video.count)).first.decorate
  end

end
