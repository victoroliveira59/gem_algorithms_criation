# even, add = [1,2,3,4,5,6].partition(&:even?)
# puts "add #{add}, even #{even}"

class Array
	def split_by_paraty
		partition(&:even?)
	end
end

arr = [1,2,3,4,5,6]
new_even, new_add = arr.split_by_paraty
print new_add
print new_even

