class SiteController < ApplicationController
  def index
    @title="Welcome to WeatheredWatcher"
    @current_page = "index"
    @jspromote = "<a href='https://developer.mozilla.org/en/JavaScript/Guide' title='Learning JavaScript'><img src='http://static.jsconf.us/promotejsh.gif' height='150' width='180' alt='Learning JavaScript'/></a>"
    @lastfm_feed = GetLastFmFeed.displayFeed
  end

  def about
    @title="Welcome to WeatheredWatcher::About"
    @current_page = "about"
    @jspromote = "<a href='https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Number' title='JS Number .toString'><img src='http://static.jsconf.us/promotejsv.gif' height='280' width='160' alt='JS Number .toString'/></a>"
    @lastfm_feed = GetLastFmFeed.displayFeed
  end

  def projects
    @title="Welcome to WeatheredWatcher::Projects & Portfolio"
    @current_page = "portfolio"
    @jspromote = "<a href='https://developer.mozilla.org/en/JavaScript' title='JavaScript API'><img src='http://static.jsconf.us/promotejsh.gif' height='150' width='180' alt='JavaScript API'/></a>"
    @lastfm_feed = GetLastFmFeed.displayFeed
  end

  def contact
    @title="Welcome to WeatheredWatcher::Contact"
    @current_page = "contact"
    @jspromote = "<a href='https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Array' title='JS Array length'><img src='http://static.jsconf.us/promotejsh.gif' height='150' width='180' alt='JS Array length'/></a>"
    @lastfm_feed = GetLastFmFeed.displayFeed
  end

  def blog
  @title="Welcome to WeatheredWatcher::Blog"
  @current_page = "blog"
  @jspromote = "<a href='https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/RegExp' title='JavaScript RegExp Example: Using a regular expression with the sticky flag'><img src='http://static.jsconf.us/promotejsh.gif' height='150' width='180' alt='JavaScript RegExp Example: Using a regular expression with the sticky flag'/></a>"
  @lastfm_feed = GetLastFmFeed.displayFeed
    require 'rss'
  require 'open-uri'
@contentArray = []
  rss = RSS::Parser.parse open('http://weatheredwatcher.posterous.com/rss.xml').read, false

  puts rss.channel.title

  rss.items.each_with_index do |item,i|
    puts "" if i.zero? or item.date.day != rss.items[i-1].date.day

    line =  "<h3>#{item.title}</h3> <br />written by weatheredwatcher at #{item.date} <br /> #{item.description}"
    @contentArray.push line
  end

  end


end
