class AddUrlToUnmotivationalVideosAndImages < ActiveRecord::Migration
  def change
  	add_column :unmotivational_videos, :url, :string
  	add_column :unmotivational_images, :url, :string
  end
end
