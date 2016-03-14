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
			["WeightliftingImage", "http://40.media.tumblr.com/f45e15ec6d56744ee45c48fb461a502a/tumblr_npqiwjx1fp1u9l8ppo1_500.jpg"],
			["RunningImage", "http://cdn-media-1.lifehack.org/wp-content/files/2014/07/Long_Distance_Running.jpg"],
			["RunningImage", "http://1.bp.blogspot.com/-_ZB40aIPY-A/UxdMtXi_nSI/AAAAAAAAARg/5nSYCq8J320/s1600/if+you+wait.jpg"]]

videos = [["RunningVideo", "5CQbTBwLU3U"], ["RunningVideo", "gF0rrpMH-Jo"], 
		 ["RunningVideo", "yLGfPNhtS2U"], ["WeightliftingVideo", "dImoa__F4Bc"], 
		 ["WeightliftingVideo", "ZpwEHIL_UZ4"], ["RunningVideo", "FZk40J_drws"], ["RunningVideo", "BZMHM3GVeoU"],
		["RunningVideo", "UsGR0mnAA74"],["RunningVideo", "RpvzpvD0vT4"], ["RunningVideo", "xf4eJgwrUyA"], ["RunningVideo", "8bz8ip2ptJQ"],
		["RunningVideo", "khv3WXvs6hk"], ["RunningVideo","f6Vyrr4f-z8"], ["RunningVideo", "eQ7alNd1oRo"], ["RunningVideo", "EQplMkG6RNQ" ],
		["RunningVideo", "JrzqJ8ZIPqs"], ["RunningVideo", "jRl0PjiPnyM"], ["RunningVideo","Ntb90t75vmk"], ["RunningVideo", "Bmp4qaNWgt0"],
		["RunningVideo", "yOfkwA26hrY"], ["RunningVideo","Yx3rO2XL2fc" ], ["RunningVideo","zn6k3gXCszE" ],["RunningVideo","Hyy735BRang" ],
		["RunningVideo","t8NHpcb-yW4" ], ["RunningVideo","vkjQxRXPLr8" ], ["RunningVideo","aufnocX5k4k" ],["RunningVideo","OF8ZdwpnTLQ" ],
		["RunningVideo","6OnkOR1Bqx8" ], ["RunningVideo","O28Xf_BxLCI" ], ["RunningVideo","UT2BPCmJDkk" ],["RunningVideo","NElXjdsKVyY" ],
		["RunningVideo","1uMFijSHSKg" ], ["RunningVideo","SXjZrfupKN4" ], ["RunningVideo","oauocB3p9lM" ],["RunningVideo","TttKk_9BwOA" ]]
videos.each do |video|
	Video.find_or_create_by(type: video[0], url: video[1])
end

images.each do |image|
	Image.find_or_create_by(type: image[0], url: image[1])
end
