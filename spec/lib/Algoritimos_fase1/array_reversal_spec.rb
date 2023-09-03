require './spec/spec_helper'
require './Algoritimos_fase1/array_reversal.rb'

RSpec.describe 'reversal and rothate' do
	context "testing algorithms fase 01" do
		it "If the number of attempts is greater than the number of elements, it returns the original array" do
			arr = [1,2,3,4,5,6,7,8,9]
			rothate(arr, 12, arr.size)
			expect(arr).to eq([1,2,3,4,5,6,7,8,9])
		end

		it "change of numbers rothate" do
			arr = [1,2,3,4,5,6,7,8,9,10]
			output = [6,7,8,9,10,1,2,3,4,5]
			rothate(arr, 5 ,arr.size)
			expect(arr).to eq(output)
		end

		it "change of numbers rothate" do
			arr = [10,9,8,7,6,5,4,3,2,1]
			d = 6
			n = arr.size
			output = [6,5,4,3,2,1,10,9,8,7]
			rothate(arr, d ,n)
			expect(arr).to eq(output)
		end
	end
end