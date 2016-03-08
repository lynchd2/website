class CreateUserSubmittedMotivations < ActiveRecord::Migration
  def change
    create_table :user_submitted_motivations do |t|

      t.timestamps null: false
    end
  end
end
