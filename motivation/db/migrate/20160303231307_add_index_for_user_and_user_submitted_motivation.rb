class AddIndexForUserAndUserSubmittedMotivation < ActiveRecord::Migration
  def change
  	add_reference :user_submitted_motivations, :user, index: true
  end
end
