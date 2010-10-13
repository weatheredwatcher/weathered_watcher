# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end

class GetLastFmFeed

  def self.displayFeed

     require 'rss'
     require 'open-uri'
     @lastfmArray = []
     rss = RSS::Parser.parse open('http://ws.audioscrobbler.com/1.0/user/minasmir/recenttracks.rss').read, false

     puts rss.channel.title
     @lastfmArray.push "<p class='section'>Last.FM Feed</p>"
     @lastfmArray.push "<ul style='font-size:11px;'>"
     rss.items.each_with_index do |item,i|
     puts "" if i.zero? or item.date.day != rss.items[i-1].date.day

      line =  "<li><a href=\"#{item.link}\">#{item.title}</a></li> "
     @lastfmArray.push line
   end
   @lastfmArray.push "</ul>"
    return @lastfmArray
  end

end
