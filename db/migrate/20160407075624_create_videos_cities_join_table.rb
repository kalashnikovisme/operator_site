class CreateVideosCitiesJoinTable < ActiveRecord::Migration
  def change
    create_table "cities_videos", id: false, force: :cascade do |t|
      t.integer "video_id"
      t.integer "city_id"
    end
  end
end
