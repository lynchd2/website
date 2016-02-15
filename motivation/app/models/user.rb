class User < ActiveRecord::Base
	has_many :favorite_videos
	has_many :videos, through: :favorite_videos
	has_many :favorite_images
	has_many :images, through: :favorite_images

	accepts_nested_attributes_for :favorite_videos


	validates :email, presence: true
	has_secure_password
end
