# O algoritimo counting sort é baseado em três arrays

def counting_sort(arr)

	max_value = 7 #Essa linha indica que meu array deve ter no máximo 7 indices(0 a 6)
	count = Array.new(max_value, 0)

# O loop abaixo calcula a frequência de repetição dos arrays em um novo array(count) que armazena a repetição de cada número em seu indice
	arr.each do |element|
		count[element - 1] += 1 #Está linha verifica cada elemento e se houver uma repetição incrementa mais 1 ao indice do elemento
	end

# As linhas abaixo faz uma soma de acumulativo a partir do primeiro indice
count.each_with_index do |_, i|
	next if i == 0 #condição para iniciar a partir do primeiro indice
		count[i] += count[i - 1] #Calculo para calcular o indice atual mais o indice anterior
	end

array_b = Array.new(0) #Inicia o terceiro array

	(arr.length - 1).downto(0) do |i| #Loop para percorrer o array de trás para frente
		array_b[count[arr[i] - 1] - 1] = arr[i] # Essa linha está pedindo para poder ir no array principal(arr) pegar o ultimo numero desse array e comparar com o array(count)
																						# armazenar o numero correspondente do array(arr) baseado no numero do array(count) decrementado em menos 1 e armazenar no indice correspondente do array_b
		count[arr[i]-1] -= 1										# <= E a linha ao lado decrementa o número do indice usado na operação anterior em menos 1 par que se array(arr) tiver um numero repetido ele é armazenado no indice anterior
	end
	array_b
end

lista = [3,2,4,7,4,7,1,2,3]

result = counting_sort(lista)

puts "O resultado do coutintg sort é #{result}"
