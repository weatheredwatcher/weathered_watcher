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
    require 'rexml/document'
    require 'open-uri'
    include REXML

    user = 'DavidDuggins' 
    id = open("http://twitter.com/#{user}", "UserAgent" => "Ruby-Twitter Reader").read[/\d+(?=\.rss)/]

    url = 'http://twitter.com/statuses/user_timeline/' + id + '.rss'
    doc = Document.new(open(url, "UserAgent" => "Ruby-Twitter Reader").read)
    puts doc.root.text('channel/item/title')[/^.[^:]+:\s+(.*)/,1]

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
