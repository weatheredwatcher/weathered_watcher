class SiteController < ApplicationController
  def index
    @title="Main"
  end

  def about
  end

  def projects
  end

  def contact
  end

  def blog
    file = 'test.txt'
    File.open(file, 'r') do |f1|  
      while line = f1.gets  
         puts line  
      end  
   end
   
  end

end
