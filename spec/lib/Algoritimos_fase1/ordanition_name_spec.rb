require './spec/spec_helper'
require './Algoritimos_fase1/ordanition_name.rb'

RSpec.describe 'name' do
	it 'sorting names alphabetically' do
		names = %w[Joao Maria Ana]
		expect(name(names)).to eq(%w[Ana Joao Maria])
	end
	it 'sorting names in alphabetical order with lowercase letter' do
		names = %w[Joao Maria Ana pablo]
		expect(name(names)).to eq(%w[Ana Joao Maria pablo])
	end
	it 'returns nil if the list is empty' do
		names = %w[]
		expect(name(names)).to be_nil
	end
end