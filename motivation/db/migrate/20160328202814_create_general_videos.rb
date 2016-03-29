class CreateGeneralVideos < ActiveRecord::Migration
  def change
    create_table :general_videos do |t|

      t.timestamps null: false
    end
  end
end
