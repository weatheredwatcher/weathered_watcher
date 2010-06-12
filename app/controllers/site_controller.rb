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
   
  
  @posts = Post.all
  @posts = @posts.reverse
 
  
  end
  
 
end
