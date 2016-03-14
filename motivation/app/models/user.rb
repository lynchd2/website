class User < ActiveRecord::Base
	has_many :favorite_videos, dependent: :destroy
	has_many :videos, through: :favorite_videos
	has_many :favorite_images, dependent: :destroy
	has_many :images, through: :favorite_images
	has_many :unmotivational_videos, dependent: :destroy
	has_many :unmotivational_images, dependent: :destroy
	has_many :user_submitted_motivations


	accepts_nested_attributes_for :favorite_videos
	accepts_nested_attributes_for :favorite_images


	validates :email, presence: true, uniqueness: {case_sensitive: false}
	has_secure_password
end
