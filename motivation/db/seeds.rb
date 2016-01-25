# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

videos = [["RunningVideo", "5CQbTBwLU3U"], ["RunningVideo", "gF0rrpMH-Jo"], ["RunningVideo", "yLGfPNhtS2U"], ["WeightliftingVideo", "dImoa__F4Bc"], ["WeightliftingVideo", "ZpwEHIL_UZ4", "ZpwEHIL_UZ4"]]
videos.each do |video|
	Video.create(type: video[0], url: video[1])
end
