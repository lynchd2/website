class CreateFavoriteVideos < ActiveRecord::Migration
  def change
    create_table :favorite_videos do |t|

      t.timestamps null: false
    end
  end
end
