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
   
  
  @posts = Post.all
  @posts = @posts.reverse
 
  
  end
  
 
end
