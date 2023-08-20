def maximum_sum(array, k)
    array.sort!
  
    while k.positive?
      array[array.index(array.min)] = -array.min
  
      k -= 1
    end
  
    array
  end
  #
  # lista = [9,8,8,5]
  # n = 3
  #
  # result = maximum_sum(lista,n)
  # puts result