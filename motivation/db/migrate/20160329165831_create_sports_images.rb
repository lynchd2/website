class CreateSportsImages < ActiveRecord::Migration
  def change
    create_table :sports_images do |t|

      t.timestamps null: false
    end
  end
end
