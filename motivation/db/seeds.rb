# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

images = [["WeightliftingImage", "https://s-media-cache-ak0.pinimg.com/564x/6a/f8/0f/6af80f163598dad3f79a980976cbb40b.jpg"],
		  ["RunningImage", "https://s-media-cache-ak0.pinimg.com/236x/b9/cc/41/b9cc41fd78a441304af65cbbf8bdc633.jpg"],
			["RunningImage", "https://runninginheelssa.files.wordpress.com/2013/01/556606_466614426692153_645486246_n.jpg"],
			["WeightliftingImage", "http://40.media.tumblr.com/f45e15ec6d56744ee45c48fb461a502a/tumblr_npqiwjx1fp1u9l8ppo1_500.jpg"]]

videos = [["RunningVideo", "5CQbTBwLU3U"], ["RunningVideo", "gF0rrpMH-Jo"], 
		 ["RunningVideo", "yLGfPNhtS2U"], ["WeightliftingVideo", "dImoa__F4Bc"], 
		 ["WeightliftingVideo", "ZpwEHIL_UZ4"]]
videos.each do |video|
	Video.find_or_create_by(type: video[0], url: video[1])
end

images.each do |image|
	Image.find_or_create_by(type: image[0], url: image[1])
end
