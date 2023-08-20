

def reversal(arr, start, fim)
	while start < fim
		arr[start],arr[fim] = arr[fim], arr[start]
		start += 1
		fim -= 1
	end
end

def rothate(arr ,d, n)
	reversal(arr, 0, n - 1)
	reversal(arr, 0, d - 1)
	reversal(arr, d, n - 1)
end
array = [1,2,3,4,5,6,7,8,9,10]
array.length
k = 3
rothate(array, k, array.length)
print array.inspect
