require 'nokogiri'
require 'byebug'
require 'httparty'

def scraper 
  #set url we want to target 
  url = 'https://godsunchained.com/'
  #HTTParty allows a get request to that url, returning the raw HTML
  unparsed_page = HTTParty.get(url)
  #Nokogiri uses the raw HTML from unparsed_page and formats it so we can use ruby to extract data
  parsed_page = Nokogiri::HTML(unparsed_page)
  byebug
end 

scraper