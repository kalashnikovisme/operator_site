class RemoveCityIdFromVideos < ActiveRecord::Migration
  def change
    remove_column :videos, :city_id, :integer
  end
end
