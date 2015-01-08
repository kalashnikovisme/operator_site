class Web::DeclaresController < Web::ApplicationController
  def create
    @declare = DeclareSendType.new params[:declare]
    if @declare.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end
