class Web::WelcomeController < Web::ApplicationController
  def index
    redirect_to "/pages/welcome"
  end
end
