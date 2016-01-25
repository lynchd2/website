class AddDefaultValueToImages < ActiveRecord::Migration
  def change
  	remove_column :images, :rating, :integer
  	add_column :images, :rating, :integer, default: 10
  end
end
