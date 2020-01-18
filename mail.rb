a=Array.new
begin
	puts "The actions available are : \n 1. Add mail id\n 2. display all\n 3. display only edu mail ids\n 4. search\n 5. delete mail id by value\n 6. display unique domains of all mail ids\n 7. count mail ids in given domain\n 8. exit\nenter action index : "
	c=gets.chomp.to_i
		case c
			when 1
				puts"enter the email id : "
				n=gets.chomp
				a.push(n)
			when 2
				a.each do |i|
					puts i
				end
			when 3
				a.each do |i|
					if i.end_with?"edu"
						puts i
					end
				end
			when 4
				puts"enter mail id to search : "
				n=gets.chomp
				if a.include?(n)
					puts "mail id found"
				else
					puts "not found"
				end
			when 5
				puts"enter index value to delete : "
				n=gets.chomp.to_i
				a.delete_at(n)
			when 6
				b={}
				for i in a
					if b.has_key?(i.split("@")[1])
						b[(i.split("@"))[1]]+=1
					else
						b[(i.split("@"))[1]]=1
					end
				end
				puts b.keys
			when 7
				puts "enter the domain"
				s=gets.chomp
				cnt=0
				for i in a
					if i.split("@")[1]==s
						cnt+=1
					end
				end
				puts "#{cnt} mail ids ending with #{s}"
			when 8 	then puts "thank you"
			else 	puts"invalid choice.choose again : "
		end	
end while c!=8
	
