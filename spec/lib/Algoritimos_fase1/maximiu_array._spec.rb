require './Algoritimos_fase1/maximiu_array'
require './spec/spec_helper'

describe 'maximium' do
	it 'maximum calculation with negative values' do
		sorted = [9,-8,8,3]
		expected = 22
		resut = maximum(sorted, expected)
		expect(resut).to eq(expected)
	end
	it 'maximum calculation with two negative values' do
		sorted = [9,-8,-5,3]
		expected = 19
		resut = maximum(sorted, expected)
		expect(resut).to eq(expected)
	end
	it 'maximum calculation with positive values' do
		sorted = [9,8,5,2]
		expected = 20
		resut = maximum(sorted, expected)
		expect(resut).to eq(expected)
	end
end