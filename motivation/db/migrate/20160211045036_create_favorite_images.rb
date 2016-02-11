class CreateFavoriteImages < ActiveRecord::Migration
  def change
    create_table :favorite_images do |t|

      t.timestamps null: false
    end
  end
end
