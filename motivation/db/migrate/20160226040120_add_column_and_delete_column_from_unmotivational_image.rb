class AddColumnAndDeleteColumnFromUnmotivationalImage < ActiveRecord::Migration
  def change
  	remove_column :unmotivational_images, :video_id
  	add_column :unmotivational_images, :image_id, :integer
  end
end
