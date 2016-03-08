class CreateUnmotivationalImages < ActiveRecord::Migration
  def change
    create_table :unmotivational_images do |t|
      t.integer :video_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
