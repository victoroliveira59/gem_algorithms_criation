class Bublle_sort
	attr_accessor :arr
	def initialize
		@arr = arr
	end

	def bubble_sort(arr)
		arr.each_index do |i|
			max_index = arr[i..-1].each_with_index.min_by { |num, _| num }[1] + i
			arr[i], arr[max_index] = arr[max_index], arr[i]
			true
		end
		arr
	end
end

lista = [9,2,6,3,7,1,-3,-8]
result = Bublle_sort.new
print result.bubble_sort(lista)

# puts "Minha lista ficou ordenada da seguinte forma: #{result.inspect}"
