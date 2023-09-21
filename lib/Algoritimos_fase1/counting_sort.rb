# O algoritimo counting sort é baseado em três arrays

def counting_sort(arr)
	if arr.any? { |num| num.negative? }
		puts "O array contém números negativos. Não é possível realizar a ordenação."
		return nil
	end

	max_value = 7 #Essa linha indica que meu array deve ter no máximo 7 indices(0 a 6)
	min_value = arr.min
	array_count = Array.new(max_value, 0)

	if arr.any? { |element| element > max_value }
		puts "O array contém valores maiores que max_value. Altere o array ou max_value."
		return nil
	end

# O loop abaixo calcula a frequência de repetição dos arrays em um novo array(count) que armazena a repetição de cada número em seu indice
	arr.each do |element|
		 array_count[element - min_value] += 1 #Está linha verifica cada elemento e se houver uma repetição incrementa mais 1 ao indice do elemento
	end

# As linhas abaixo faz uma soma de acumulativo a partir do primeiro indice
	array_count.each_with_index do |_, i|
	next if i == 0 #condição para iniciar a partir do primeiro indice
	array_count[i] += array_count[i - 1] #Calculo para calcular o indice atual mais o indice anterior
	end

array_b = [] #Inicia o terceiro array

	(arr.length - 1).downto(0) do |i| #Loop para percorrer o array de trás para frente


		array_b[array_count[arr[i] - min_value] - 1] = arr[i] # Essa linha está pedindo para poder ir no array principal(arr) pegar o ultimo numero desse array e comparar com o array(count)
																						# armazenar o numero correspondente do array(arr) baseado no numero do array(count) decrementado em menos 1 e armazenar no indice correspondente do array_b
		array_count[arr[i]-min_value] -= 1										# <= E a linha ao lado decrementa o número do indice usado na operação anterior em menos 1 par que se array(arr) tiver um numero repetido ele é armazenado no indice anterior
	end
	array_b
end

unsorted_list = [2,6,9,6,2,4,6,6]
result = counting_sort(unsorted_list)
puts "#{result}"