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
  
  #This is an xml parser to help us write out the blog
  
  require 'hpricot'
  
  fh = File.open("#{RAILS_ROOT}/public/wordpress.2010-05-24.xml", "r")

  doc = Hpricot(fh)

  fh.close
  
  puts (doc/"title").inner_html
  
  end
  
 
end
