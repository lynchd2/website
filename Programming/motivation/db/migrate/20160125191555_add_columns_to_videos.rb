class AddColumnsToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :url, :string
    add_column :videos, :rating, :integer, default: 10
  end
end
