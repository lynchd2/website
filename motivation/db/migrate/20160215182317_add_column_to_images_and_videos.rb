class AddColumnToImagesAndVideos < ActiveRecord::Migration
  def change
  	add_column :favorite_videos, :url, :string
  	add_column :favorite_images, :url, :string
  end
end
