stock_dict = { 'GM' => 'General Motors',
 'CAT' => 'Caterpillar', 'EK' => "Eastman Kodak" }
stock_dict

 purchases = [ [ 'GM', 100, '10-sep-2001', 48 ],
 [ 'CAT', 100, '1-apr-1999', 24 ],
 [ 'GM', 200, '1-jul-1998', 56 ] ]

#PART 1
names = []
#puts stock_dict["GM"]
names.push(stock_dict["GM"])
 names.push(stock_dict["CAT"])
 names.push(stock_dict["GM"])
 #puts names

 purchase_price = []
 for item in purchases
 	price = item[1] * item[3]
	purchase_price << price.to_s
end

#puts purchase_price

history_report = []
history_report.push(names[0] + " - Purchase price:  " + "$" + purchase_price[0])
history_report.push(names[1] + " - Purchase price: " + "$" + purchase_price[1])
history_report.push(names[2] + " - Purchase price: " + "$" + purchase_price[2])

puts "History Report: #{history_report}"


#ticker_symbols = [] 
#stock_dict.each do |key,value|
	#puts "Ticker symbol: #{key}"
	#ticker_symbols.push(key)
#end

#PART 2
purchase_summary = Hash.new

stock_dict.each do |key, val|
	purchase_summary[key] = []
end

for item in purchases
	purchase_summary.each do |key, val|
		if item[0] == key
			val.push(item[1]*item[3])
		end
	end

end
puts "Purchase Summary: #{purchase_summary}"

	