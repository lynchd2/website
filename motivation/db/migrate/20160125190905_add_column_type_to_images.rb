class AddColumnTypeToImages < ActiveRecord::Migration
  def change
  	add_column :images, :type, :string
  	remove_column :images, :rating, :integer
  	add_column :images, :rating, :integer

  end
end
