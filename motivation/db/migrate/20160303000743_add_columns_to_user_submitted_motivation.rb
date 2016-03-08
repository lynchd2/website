class AddColumnsToUserSubmittedMotivation < ActiveRecord::Migration
  def change
  	add_column :user_submitted_motivations, :format, :string
  	add_column :user_submitted_motivations, :url, :string
  	add_column :user_submitted_motivations, :type_submitted, :string
  end
end
