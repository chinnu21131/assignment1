class Student
	attr_accessor :rollno, :name, :state, :branch, :cgpa
	def initialize(name = nil , rollno = nil,branch = nil,state = nil,cgpa = nil)
		@name=name
		@rollno=rollno
		@state=state
		@branch=branch
		@cgpa=cgpa
	end
	def disp
		puts"name : #{@name}\trollno : #{@rollno}\tstate : #{@state}\tbranch : #{@branch}\tcgpa : #{@cgpa}"
	end
end
a=Array.new
begin
	puts"The actions available are : \n 1. Add new student\n 2. display all students\n 3. display student by branch\n 4. display students by state\n 5. Search students by roll number\n 6. search by part of the name\n 7. delete by roll number\n 8. count and display number of students by state\n 9. count and display number of students by branch\n 10. exit"
	c=gets.chomp.to_i
		case c
			when 1
				 puts "enter name,rollno,branch ,state,cgpa in the order"
    	 			 b=Student.new(gets.chomp,gets.chomp.to_i,gets.chomp,gets.chomp,gets.chomp.to_f)
    				 a.push(b)
			when 2
				a.each do |i|
					i.disp
				end
			when 3
    				puts "enter the branch you want to search"
   				branch=gets.chomp
    				for i in a
 				        if i.branch.eql?branch
        				    i.disp
					end
				end
			when 4
				puts "enter the state you want to search"
   				state=gets.chomp
				for i in a
      				       if i.state.eql?state
				            i.disp
				       end
				end

			when 5
	    			puts "enter the rollno you want to search"
    				roll=gets.chomp.to_i
    				for i in a
        				if i.rollno==roll
            					i.disp
        				end
    				end
			when 6
    				puts "enter the substring you want to search"
    				roll=gets.chomp
    				for i in a
        				if i.name.include?(roll)
            					i.disp
        				end
    				end
			when 7
    				puts "enter the rollno you want to delete"
    				roll=gets.chomp.to_i
    				for i in a
        				if i.rollno==roll
       						a.delete(i)
					end
    				end
			when 8
    				b={}
    				for i in a
        				if b.has_key?(i.state)
            					b[i.state]+=1
        				else
            					b[i.state]=1
        				end
    				end
    				for i in b.keys
        				puts "#{b[i]} from #{i}"
    				end
			when 9
    				b={}
    				for i in a
        				if b.has_key?(i.branch)
            					b[i.branch]+=1
        				else
            					b[i.branch]=1
        				end
    				end	
    				for i in b.keys
        				puts "#{b[i]} from #{i}"
    				end
			when 10
    				puts "thank you"
			else puts "invalid choice.choose again : "
		end
end while c!=10
