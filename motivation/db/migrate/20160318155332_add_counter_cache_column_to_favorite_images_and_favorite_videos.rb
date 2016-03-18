class AddCounterCacheColumnToFavoriteImagesAndFavoriteVideos < ActiveRecord::Migration
  def change
  	add_column :images, :favorite_images_count, :integer, default: 0
  	add_column :videos, :favorite_videos_count, :integer, default: 0
  end
end
