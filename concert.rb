require 'nokogiri'
require 'open-uri'
require 'awesome_print'

url = open("index.html")


data = Nokogiri::HTML(url)
final_data = []


#parsing the object
data.css("tbody tr").each do |row|
	row_item = row.css("td").map do |r|
		r.text
	end

final_data << row_item
end

# getting it ready for the DB
mapped_data = final_data.map do |m|
	{day:m[0],
		date:m[1],
		artist:m[2],
		venue:m[3],
		price:m[4],
		sale:m[5],
		link:m[6],
		age:m[7],
		region:m[8]}
end
ap mapped_data