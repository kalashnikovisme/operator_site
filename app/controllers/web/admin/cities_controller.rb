class Web::Admin::CitiesController < Web::Admin::ApplicationController
  def index
    @cities = CityDecorator.decorate_collection City.all
  end

  def new
    @city = CityEditType.new
  end

  def edit
    @city = CityEditType.find params[:id]
  end

  def create
    @city = CityEditType.new params[:city]
    if @city.save
      redirect_to admin_cities_path
    else
      render action: :new
    end
  end

  def update
    @city = CityEditType.find params[:id]
    if @city.update_attributes params[:city]
      redirect_to admin_cities_path
    else
      render action: :edit
    end
  end

  def destroy
    @city = CityEditType.find params[:id]
    @city.destroy
    redirect_to admin_cities_path
  end
end
