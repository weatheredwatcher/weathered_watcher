class SiteController < ApplicationController
  def index
    @title="Welcome to WeatheredWatcher"
  end

  def about
    @title="Welcome to WeatheredWatcher::About"
  end

  def projects
    @title="Welcome to WeatheredWatcher::Projects & Portfolio"
  end

  def contact
    @title="Welcome to WeatheredWatcher::Contact"
  end

  def blog
    @title="Welcome to WeatheredWatcher::Blog"
    httpauth = Twitter::HTTPAuth.new('DavidDuggins', 'm0rpheus')

    client = Twitter::Base.new(httpauth)
    #client.update('Heeeeyyyyooo from the Twitter Gem')
    client.friends_timeline.each { |tweet| puts tweet.text }
    
    #=> If you ever need speakers for a tech event, I suggest visiting here first: https://www.socialtext.net/speakers/index.cgi

    
    
   # This is where we parse and dump the output of the text files into the blog
   #TODO Need to read a directory of files instead of a single file OR use XML for the entries
   #TODO Need to create some structure for various blog elements
   # f = File.open("#{RAILS_ROOT}/public/test.txt", 'r')
   #  @contentsArray=[]  # start with an empty array
   # f.each_line {|line|
   #    @contentsArray.push line
   # }
    
  end

end
