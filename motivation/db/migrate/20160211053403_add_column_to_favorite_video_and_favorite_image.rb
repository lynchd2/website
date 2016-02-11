class AddColumnToFavoriteVideoAndFavoriteImage < ActiveRecord::Migration
  def change
  	add_reference :favorite_videos, :user, index: true
  	add_foreign_key :favorite_videos, :users

  	add_reference :favorite_videos, :video, index: true
  	add_foreign_key :favorite_videos, :videos


  	add_reference :favorite_images, :user, index: true
  	add_foreign_key :favorite_images, :users

  	add_reference :favorite_images, :image, index: true
  	add_foreign_key :favorite_images, :images
  end
end
