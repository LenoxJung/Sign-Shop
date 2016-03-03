def calculate_sign_price (feet,colors)
	price = 0
	price += 15*feet
	if colors > 2
		price += 15*colors
	else 
		price += 10*colors
	end
	(price*1.15).to_f
end

def interact ()
    feet = 0
    colors = 0
    while (feet < 1)
        puts "How big would you like the sign in square feet?"
        feet = gets.chomp.to_i
    end
    while (colors<1)
        puts "How many colors would you like in your sign?"
        colors = gets.chomp.to_i
    end
    puts "Your total comes to $#{calculate_sign_price(feet,colors)}"
end
interact()
