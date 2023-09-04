require './spec/spec_helper'
require './Algoritimos_fase1/search_binary_teste.rb'

RSpec.describe 'search' do
	it 'search by value in index' do
		array = [1,2,3,4,5,6,7,8,9,10]
		target = 9
		expect(search(array, target)).to eq(8)
	end
	it 'return nil if the target is not in the array' do
		array = [1,2,3,4,5,6,7,8,9,10]
		target = 11
		expect(search(array, target)).to be_nil
	end
	it 'returns nil for an empty array ' do
		array = []
		target = 9
		expect(search(array, target)).to be_nil
	end
end