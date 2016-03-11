class ApplicationController < ActionController::Base
	helper_method :video_title
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include VideosHelper
  include SessionsHelper

  def video_title(video)
  	VideoInfo.new("https://www.youtube.com/watch?v=#{video.url}").title
  end
end
