require 'nokogiri'
require 'byebug'
require 'open-uri'

# url = "https://godsunchained.com/"

# def scraping(url)
#   html = URI.open(url)
#   doc = Nokogiri::HTML(html)
#   byebug
#   final_array = []

#   doc.search("*").each do |element|
#     element = element.text
#     final_array << element
#   end 

#   final_array.each_with_index do |element, index|
#     puts "#{index + 1} - #{element}"
#   end 

#   if final_array.count == 0 
#     puts "There are no elements selected"
#   end

# end 


# scraping = scraping(url)

doc = Nokogiri::HTML(URI.open('https://godsunchained.com/'))

puts doc