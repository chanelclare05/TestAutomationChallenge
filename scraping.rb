require 'nokogiri'
require 'byebug'
require 'open-uri'

doc = Nokogiri::HTML(URI.open("http://flatironschool.com/"))
p doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].name
p doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].attributes


