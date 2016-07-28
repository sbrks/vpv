#PSEUDOCODE
#iterate through numbers 1-999 
#select all multiples of 3 and multiples of 5
#store results in an array
#add values of all numbers in array


#SOLUTION
#first, we need a method that will select all multiples of 3 and 5 from 1-1000 and store them in an array called 'multiples' (we can start at 3 and end at 999 since  1,2, and 1000 can be excluded--they are not multiples of 3 or 5--before selecting begins)

	def multiples
		#select all numbers from 3-999 using iterator i...
		(3..999).select do |i|
			#...that are divisible by 3 or divisible by 5
			i%3 == 0 || i%5 == 0
		end
	end
	#return all multiples of 3 and 5
		multiples

#next, we want to total all of the numbers stored in the multiples array:
	def add_multiples(multiples)
		#set variable total equal to the sum of all values in the multiples array
		#same as saying (multiples of 3 and 5 from 3..999).inject(&:+)
		total = multiples.inject(&:+)
		#print result
		puts total
	end
#when this code is run, you should get the correct result: 233,168
