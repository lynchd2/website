class DropRunningVideoAndWeightliftingVideo < ActiveRecord::Migration
  def change
  	drop_table :weightlifting_videos
  	drop_table :running_videos
  end
end
