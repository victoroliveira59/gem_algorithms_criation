require './spec/spec_helper.rb'
require './Algoritimos_fase1/greedy_algorithm.rb'

RSpec.describe 'greedy' do
	context 'Testing algorithm greedy' do
		it 'Searching the algorithm greedy' do
			input = 200
			received = 75
			expected = [50,50,25]

			result = greedy(input, received)
			expect(result).to eq(expected)
		end
		it 'If the amount received is equal to the amount paid' do
			input = 200
			received = 200
			expected = []

			result = greedy(input,received)
			expect(result).to eq(expected)
		end
	end
end


