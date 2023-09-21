

def maximum (arr,k)
	a = arr.sort #essa função ordena o array em ordem crescente
	a.each_with_index do |value, i|
		if k > 0
			if value < 0 #Condição do valor menor que 0, multiplica por -1 e vira positivo decrementando o meu valor de K
				a[i] *= - 1
				k -= 1
			elsif value == 0
				k = 0
				break
			elsif value > 0 #Quando o menor valor do array e maior que zero ele é multiplicado por menos 1 e o codigo é parado
				a[i] *= - 1
				break
			else
				break
			end

		end
	end
	a.sum
end

