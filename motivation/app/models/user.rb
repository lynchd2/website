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

	def display_random_favorite_video
		video = FavoriteVideo.where(user_id: self.id).order("RANDOM()").first(1)[0]
			if video
				video_thumbnail = VideoInfo.new("https://www.youtube.com/watch?v=#{video.url}").thumbnail_large
			else
				nil
			end
	end

	def display_random_favorite_image
		image = FavoriteImage.where(user_id: self.id).order("RANDOM()").first(1)[0]
		image ? image.url : nil
	end

		def display_random_favorite_video
		video = FavoriteVideo.where(user_id: self.id).order("RANDOM()").first(1)[0]
			if video
				video_thumbnail = VideoInfo.new("https://www.youtube.com/watch?v=#{video.url}").thumbnail_large
			else
				nil
			end
	end

	def display_all_favorite_videos
		videos = FavoriteVideo.where(user_id: self.id)
		videos.map do |video|
			[video, VideoInfo.new("https://www.youtube.com/watch?v=#{video.url}").thumbnail_large]
		end
	end

	def find_unmotivational_image_ids
		UnmotivationalImage.where(user_id: self.id).pluck(:image_id)
	end

	def find_unmotivational_video_ids
		UnmotivationalVideo.where(user_id: self.id).pluck(:video_id)
	end
end
