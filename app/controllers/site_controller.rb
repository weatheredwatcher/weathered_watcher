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
  
  require 'net/http'
  require 'rexml/document'

  # Web search for "madonna"
  url = 'http://api.search.yahoo.com/WebSearchService/V1/webSearch?appid=YahooDemo&query=madonna&results=2'

  # get the XML data as a string
  xml_data = Net::HTTP.get_response(URI.parse(url)).body

  # extract event information
  doc = REXML::Document.new(xml_data)
  titles = []
  links = []
  doc.elements.each('ResultSet/Result/Title') do |ele|
     titles << ele.text
  end
  doc.elements.each('ResultSet/Result/Url') do |ele|
     links << ele.text
  end

  # print all events
  titles.each_with_index do |title, idx|
     print "#{title} => #{links[idx]}\n"
  end
  
  
  end

end
