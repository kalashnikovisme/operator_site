class AddCityIdToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :city_id, :integer
  end
end
