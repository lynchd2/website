class CreateUnmotivationalVideos < ActiveRecord::Migration
  def change
    create_table :unmotivational_videos do |t|
      t.integer :video_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
