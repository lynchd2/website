class CreateSportsVideos < ActiveRecord::Migration
  def change
    create_table :sports_videos do |t|

      t.timestamps null: false
    end
  end
end
