require './Algoritimos_fase1/counting_sort.rb'
require './spec/spec_helper.rb'

RSpec.describe 'counting_sort' do
	context 'If no fields are entered' do
		it 'Array equals nil' do
			unsorted_list = []
			result = counting_sort(unsorted_list)
			expect(result).to eq([])
		end
	end
	context 'Counting negative numbers' do
		it ' When Array equals the negative' do
			unsorted_list = [-6,-7,-2,-1,-1,-4,-3]
			result = counting_sort(unsorted_list)
			expect(result).to eq(nil)
		end
	end

	context 'the test passes' do
		it 'check if my count contains is valid ' do
			unsorted_list = [2,6,6,5,4,4,1,5,6]
			result = counting_sort(unsorted_list)
			expect(result).to eq([1, 2, 4, 4, 5, 5, 6, 6, 6])
		end
	end
	context 'When value greater than max value' do
		it 'check if my count contains is greater than max value ' do
			unsorted_list = [2,6,6,9,4,4,1,5,6]
			result = counting_sort(unsorted_list)
			expect(result).to eq(nil)
		end
	end
end




