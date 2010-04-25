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
   # This is where we parse and dump the output of the text files into the blog
   #TODO Need to read a directory of files instead of a single file OR use XML for the entries
   #TODO Need to create some structure for various blog elements
    f = File.open("#{RAILS_ROOT}/public/test.txt", 'r')
    @contentsArray=[]  # start with an empty array
    f.each_line {|line|
      @contentsArray.push line
    }
    
  end

end
