class User < ActiveRecord::Base
	has_many :favorite_videos
	has_many :videos, through: :favorite_videos
	has_many :favorite_images
	has_many :images, through: :favorite_images
	has_many :unmotivational_videos
	has_many :unmotivational_images


	accepts_nested_attributes_for :favorite_videos
	accepts_nested_attributes_for :favorite_images


	validates :email, presence: true
	has_secure_password
end
