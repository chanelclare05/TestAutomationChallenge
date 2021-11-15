#Difficulty pulling all tags from the Godsunchained website


# Write a script that filters elements from the DOM with duplicated tags from the https://godsunchained.com/ page and then prints them in alphabetical order.


require 'nokogiri'
require 'byebug'
require 'open-uri'

url = "https://godsunchained.com/"

def scraping(url)
  html = URI.open(url)
  doc = Nokogiri::HTML(html)
  final_array = []

  doc.search("*").each do |element|
    final_array << element.name
  end 

  final_array.each_with_index do |element, index|
    puts "#{index + 1} - #{element}"
  end 

  if final_array.count == 0 
    puts "There are no elements selected"
  end

end 


scraping(url)

