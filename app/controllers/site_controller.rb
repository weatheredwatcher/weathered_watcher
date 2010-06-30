class SiteController < ApplicationController
  def index
    @title="Welcome to WeatheredWatcher"
    @current_page = "index"
  end

  def about
    @title="Welcome to WeatheredWatcher::About"
    @current_page = "about"
  end

  def projects
    @title="Welcome to WeatheredWatcher::Projects & Portfolio"
    @current_page = "portfolio"
  end

  def contact
    @title="Welcome to WeatheredWatcher::Contact"
    @current_page = "contact"
    
    
  end

  def blog
  @title="Welcome to WeatheredWatcher::Blog"
  @current_page = "blog"
  require 'rss'
  require 'open-uri'
@contentArray = []
  rss = RSS::Parser.parse open('http://weatheredwatcher.posterous.com/rss.xml').read, false

  puts rss.channel.title

  rss.items.each_with_index do |item,i|
    puts "" if i.zero? or item.date.day != rss.items[i-1].date.day

    line =  "<h1 class=\"blog_title\"><#{item.title}</h1><h3>written my weatheredwatcher at #{item.date}</h3> #{item.description}"
    @contentArray.push line
  end
  
  end
  
 
end
