a=Array.new
begin
	puts "The actions available are :\n 1. Add value\n 2.minimum\n 3.maximum\n 4.sum\n 5.average\n 6.search\n 7.display\n 8.delete value by index\n 9.delete value\n 10. exit\nenter action index : "
	c=gets.chomp.to_i
	b=Array.new
	sum=0
	a.each do |i|
		sum=sum+i
	end
	if c!=10
		case c
			when 1 
				puts"enter the number to be inserted : "
				n=gets.chomp.to_i
				a.push(n)
			when 2 	
				b=a.sort()
				puts"minimum=#{b.first}"	
			when 3 	
				b=a.sort()				
				puts"maximum=#{b.last}"
			when 4 
				puts"sum=#{sum}"
			when 5 
				puts"average=#{sum/a.size()}"
			when 6 
				puts"enter number to search : "
				n=gets.chomp.to_i
				puts a.include?(n)
			when 7
				a.each do |i|
					puts i
				end
			when 8
				puts"enter index to delete : "
				i=gets.chomp.to_i
				a.delete_at(i)
				puts"element deleted at index #{i}"
			when 9
				puts"enter value to delete : "
				n=gets.chomp.to_i
				a.delete(n)
				puts"element deleted"
			else puts"invalid choice.choose again : "
		end
	end
end while c!=10
