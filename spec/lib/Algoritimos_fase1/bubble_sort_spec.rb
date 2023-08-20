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

		it 'handles an already sorted list' do
			sorted_list = [-8, -3, 1, 2, 3, 6, 7, 9]
			instance = Bublle_sort.new
			expect(instance.bubble_sort(sorted_list)).to eq(sorted_list)
		end
	end
end

