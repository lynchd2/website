class UserSubmittedMotivation < ActiveRecord::Base
	belongs_to :user

	validates_presence_of :type_submitted, :url, :format
end
