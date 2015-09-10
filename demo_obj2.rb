class Product_detail
	attr_accessor :quantity, :product, :price, :tax_fee
	$MEDICINE = ["flu","headache","sick","stomach", "pain","cancer","ill","medicine"]
	$FOOD = ["meat","milk","rice","fish","potato","tomato","water","vesgetable","food","cereal"]
	$BOOK = ["book","author","poem","story"]
	def initialize(product, quantity, price)
		@product = product
		@quantity = quantity
		@price = price
		@tax_fee = (@price * after_tax - @price).round(2)
	end

	def to_s
		"Product: #{@product}\n Quantity: #{@quantity} - Price: #{@price}$ - Tax fee: #{@tax_fee}\n\n"
	end

	def after_tax
		tax_fee = 1.1
		$MEDICINE.each do |item|
			if @product.downcase.include?item
				tax_fee = 1
			end
		end
		$BOOK.each do |item|
			if @product.downcase.include?item
				tax_fee = 1
			end
		end
		$FOOD.each do |item|
			if @product.downcase.include?item
				tax_fee = 1
			end
		end
		if @product.downcase.include?"imported"
			tax_fee = 1.15
		end
		tax_fee
	end
end

def total_tax(arr_product)
	total_tax_fee = 0
	arr_product.each do |item|
		total_tax_fee += (item.tax_fee * item.quantity)
	end
	total_tax_fee
end

def product_tax(arr_product)
	total = total_tax(arr_product)
	arr_product.each do |item|
		total += (item.quantity * item.price)
	end
	total
end

# def after_tax(arr_product)
# 	new_arr = Array.new
# 	arr_product.each do |product|
# 		if ( product.product.include?"medicine" or product.product.include?"book" or product.product.include?"food" )
# 			new_arr << product
# 		elsif (product.product.include?"imported")
# 			product.price = (product.price *= 1.15).round(2)
# 			new_arr << product
# 			else
# 				product.price = (product.price *= 1.1).round(2)
# 				new_arr << product
# 		end
# 	end
# end

arr_product = Array.new
product = Product_detail.new("flu medicine", 20, 2)
arr_product << product
product = Product_detail.new("science books", 12, 20)
arr_product << product
product = Product_detail.new("fast foods", 100, 15)
arr_product << product
product = Product_detail.new("programing ruby books", 25, 20)
arr_product << product
product = Product_detail.new("cd music", 46, 14)
arr_product << product
product = Product_detail.new("chocolate", 25, 17)
arr_product << product
product = Product_detail.new("imported candy", 23, 5)
arr_product << product
product = Product_detail.new("imported laptop vaio fit", 25, 1200)
arr_product << product
product = Product_detail.new("imported clock", 25, 1450)
arr_product << product

# pro_after_tax = after_tax(arr_product)
# puts pro_after_tax

puts arr_product
puts "Total tax fee: #{total_tax(arr_product)}$"
puts "Total: #{product_tax(arr_product)}$"
