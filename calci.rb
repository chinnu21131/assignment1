begin
	puts "The actions available are : \n 1.add\n 2.subtract\n 3.multiply\n 4.divide\n 5.power\n 6.exit\nenter action index : "
	c=gets.chomp.to_i
	if c!=6
		puts"enter first number : "
		a=gets.chomp.to_i
		puts"enter second number : "
		b=gets.chomp.to_i
		case c
			when 1 then puts"sum="+(a+b).to_s
			when 2 then puts"difference=#{a-b}"	
			when 3 then puts"product=#{a*b}"
			when 4 then puts"quotient=#{a/b} and remainder=#{a%b}"
			when 5 then puts"power value=#{a**b}"
			when 6 then puts"thank you"
			else puts"invalid choice.choose again : "
		end
	end
end while c!=6
