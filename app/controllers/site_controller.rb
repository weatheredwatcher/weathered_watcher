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
   # @title="Welcome to WeatheredWatcher::Blog"
   #@contentsArray=[]
    
  #@fileArray =[]
  #  Dir.foreach("#{RAILS_ROOT}/public/posts") do |fname|
  #    next if fname == '.' or fname == '..'
  #    @fileArray.push fname
  #  end
  #  
  #    @fileArray = @fileArray.reverse
  #    @fileArray.each{|file|
  #    f = File.open("#{RAILS_ROOT}/public/posts/" + file, 'r')
  #    f.each_line {|line|
  #  
  #  @contentsArray.push line
  #  }}
  
  @posts = Post.all
  @posts = @posts.reverse
  respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @posts }
  end
  end
  
 
end
