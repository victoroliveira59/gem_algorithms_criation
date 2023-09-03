require_relative '../../../spec/spec_helper'
require './Algoritimos_fase1/bubble_sort.rb'

RSpec.describe Bublle_sort do
	describe '#bubbe_sort' do
		it 'sorts an unsorted list' do
			unsorted_list = [9, 2, 6, 3, 7, 1, -3, -8]
			sorted_list = [-8, -3, 1, 2, 3, 6, 7, 9]
			instance = Bublle_sort.new
			expect(instance.bubble_sort(unsorted_list)).to eq(sorted_list)
		end

		it 'When a list contains negative numbers' do
			unsorted_list = [5,3,4,-3,8,3,7,-8,2]
			sorted_list = [-8, -3, 2, 3, 3, 4, 5, 7, 8]
			instance = Bublle_sort.new
			expect(instance.bubble_sort(unsorted_list)).to eq(sorted_list)
		end
		it 'When a list contains equal numbers' do
			unsorted_list = [1,2,8,9,6,4,4,7]
			sorted_list = [1, 2, 4, 4, 6, 7, 8, 9]
			instance = Bublle_sort.new
			expect(instance.bubble_sort(unsorted_list)).to eq(sorted_list)
		end
	end
end

