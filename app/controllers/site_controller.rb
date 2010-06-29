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
    
    require 'rss'
    require 'open-uri'
@contentArray = []
    rss = RSS::Parser.parse open('http://weatheredwatcher.posterous.com/rss.xml').read, false

    puts rss.channel.title

    rss.items.each_with_index do |item,i|
      puts "" if i.zero? or item.date.day != rss.items[i-1].date.day

      line =  "#{item.date.strftime '%H:%M'}  #{item.title}"
      @contentArray.push line
    end
  end

  def blog
  @title="Welcome to WeatheredWatcher::Blog"
  @current_page = "blog"
   
  
  @posts = Post.all
  @posts = @posts.reverse
 
  
  end
  
 
end
