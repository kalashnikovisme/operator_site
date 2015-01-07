class Web::ApplicationController < ApplicationController
  #1;2Q
  #before_filter :show_video, :show_proposition
  include Concerns::AuthManagment

  def show_video
    @video = Video.offset(rand(Video.count)).first.decorate
  end

  def show_proposition
    @proposition = Proposition.active.order('RANDOM()').first
  end

end
