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
			["RunningImage", "http://1.bp.blogspot.com/-_ZB40aIPY-A/UxdMtXi_nSI/AAAAAAAAARg/5nSYCq8J320/s1600/if+you+wait.jpg"],
			["SportsImage", "https://s-media-cache-ak0.pinimg.com/736x/4c/2c/0d/4c2c0d18f9a651c8260c1e5733e73a2e.jpg"], ["GeneralImage", "https://i.imgur.com/hIE9mxs.jpg"],
			["GeneralImage", "http://i.imgur.com/NxCxQFA.jpg"], ["GeneralImage", "http://i.imgur.com/cP2w1F9.jpg"],
			["GeneralImage", "http://i.imgur.com/66na3L2.jpg"], ["SportsImage", "http://i.imgur.com/VjeOagh.jpg"],
			["GeneralImage", "http://i.imgur.com/NBEclhh.png"], ["GeneralImage", "https://i.imgur.com/yGK3P1Z.jpg"],
			["GeneralImage", "http://i.imgur.com/YEsJvV8.jpg"], ["GeneralImage", "http://i.imgur.com/4xmUJOv.png"],
			["GeneralImage", "http://i.imgur.com/NCTTeiQ.jpg"], ["GeneralImage", "http://i.imgur.com/1nHoyJk.jpg"],
			["GeneralImage", "http://i.imgur.com/yeIXdTX.jpg"], ["SportsImage", "eAy5eLtpfbM"],
			["GeneralImage", "http://i.imgur.com/EV5ASCB.jpg"], ["GeneralImage", "http://i.imgur.com/YG38LBt.jpg"],
			["GeneralImage", "http://i.imgur.com/NGI5sCx.jpg"], ["GeneralImage", "http://i.imgur.com/PMuUcJn.jpg"],
			["GeneralImage", "http://imgur.com/nBnkz06"], ["GeneralImage", "http://i.imgur.com/tF7ei6P.jpg"],
			["GeneralImage", "https://s-media-cache-ak0.pinimg.com/736x/65/f3/4c/65f34c9b5695d6b47858b7a9797a3f3b.jpg"], ["GeneralImage", "http://i.imgur.com/eRCYyWI.jpg"],
			["GeneralImage", "http://i.imgur.com/gwdxFyW.jpg"]]

videos = [["RunningVideo", "5CQbTBwLU3U"], ["RunningVideo", "gF0rrpMH-Jo"], 
		 ["RunningVideo", "yLGfPNhtS2U"], ["WeightliftingVideo", "dImoa__F4Bc"], 
		 ["WeightliftingVideo", "ZpwEHIL_UZ4"], ["RunningVideo", "FZk40J_drws"], ["RunningVideo", "BZMHM3GVeoU"],
		["RunningVideo", "UsGR0mnAA74"],["RunningVideo", "RpvzpvD0vT4"], ["RunningVideo", "xf4eJgwrUyA"], ["RunningVideo", "8bz8ip2ptJQ"],
		["RunningVideo", "khv3WXvs6hk"], ["RunningVideo","f6Vyrr4f-z8"], ["RunningVideo", "eQ7alNd1oRo"], ["RunningVideo", "EQplMkG6RNQ" ],
		["RunningVideo", "JrzqJ8ZIPqs"], ["RunningVideo", "jRl0PjiPnyM"], ["RunningVideo","Ntb90t75vmk"], ["RunningVideo", "Bmp4qaNWgt0"],
		["RunningVideo", "yOfkwA26hrY"], ["RunningVideo","Yx3rO2XL2fc" ], ["RunningVideo","zn6k3gXCszE" ],["RunningVideo","Hyy735BRang" ],
		["RunningVideo","t8NHpcb-yW4" ], ["RunningVideo","vkjQxRXPLr8" ], ["RunningVideo","aufnocX5k4k" ],["RunningVideo","OF8ZdwpnTLQ" ],
		["RunningVideo","6OnkOR1Bqx8" ], ["RunningVideo","O28Xf_BxLCI" ], ["RunningVideo","UT2BPCmJDkk" ],["RunningVideo","NElXjdsKVyY" ],
		["RunningVideo","1uMFijSHSKg" ], ["RunningVideo","SXjZrfupKN4" ], ["RunningVideo","oauocB3p9lM" ],["RunningVideo","TttKk_9BwOA" ],
		["GeneralVideo", "vH0nP4NzS9M"], ["GeneralVideo", "LuJ4hbkLiY0"], ["GeneralVideo", "Sk56VxaeqEQ"], ["GeneralVideo", "3NQREuc7JX80"],
		["GeneralVideo", "lsSC2vx7zFQ"], ["GeneralVideo", "ZtMm0swu5i8"], ["SportsVideo", "Tqfg4dPEueI"], ["GeneralVideo", "DNqQ5JAY88c"], ["SportsVideo", "9zSVu76AX3I"],
		["GeneralVideo", "gfvuF5qf9v0"], ["GeneralVideo", "-mOZ9ATMg-U"], ["GeneralVideo", "WO4tIrjBDkk"], ["GeneralVideo", "rNxoLJy3m3s"],
		["GeneralVideo","u6XAPnuFjJc"], ["GeneralVideo", "iCqwwTfXr1Q"], ["GeneralVideo", "oSKDERbPrdQ"], ["GeneralVideo", "hzBCI13rJmA"],
		["SportsVideo", "niHSWYE-PLI"], ["SportsVideo", "JA7G7AV-LT8"], ["GeneralVideo", "ciYk-UwqFKA"], ["GeneralVideo", "Cpc-t-Uwv1I"], 
		["GeneralVideo", "mAlzPgXb6rE"], ["GeneralVideo", "NJzzu7ueZ7U"], ["GeneralVideo", "nmwXdGm89Tk"], ["GeneralVideo", "0eIsH2BqtAc"],
		["GeneralVideo","HuoVM9nm42E"],["GeneralVideo","hV63DbQ_qSc"], ["GeneralVideo","ywuse55qU2A"], ["SportsVideo","758glVBglfM"],
		["GeneralVideo","MsXvmLHx4m4"], ["RunningVideo","nnIhICP5PJk"], ["SportsVideo","bu60n_v5lZI"], ["SportsVideo","-lBvfXfp5p8"],
		["SportsVideo", "ezaAMcCy3u4"], ["WeightliftingVideo", "7kf6r0D3SEA"], ["GeneralVideo", "MNL_DAI19_I"], ["SportsVideo", "_T1KyRtOWOc"],
		["SportsVideo","_2TpAlCpWN8"], ["RunningVideo","wwHfcqkm5TE"], ["GeneralVideo","RYlCVwxoL_g"], ["SportsVideo","cw0swisPh-M"],
		["RunningVideo", "05sUhlxFBk0"], ["SportsVideo", "4zdIpXJlM8A"], ["SportsVideo", "G5o4KxEhVmE"], ["SportsVideo", "o2P5E7cFt9s"],
		["SportsVideo", "6kUNQlbdKwY"]]
videos.each do |video|
	Video.find_or_create_by(type: video[0], url: video[1])
end

images.each do |image|
	Image.find_or_create_by(type: image[0], url: image[1])
end
