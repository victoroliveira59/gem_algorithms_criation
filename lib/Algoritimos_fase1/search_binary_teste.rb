# Este código representa a pesquisa binaria essa pesquisa só funciona quando a lista é ordenada a sua notação é log2n

def search(arr, target)
	arr_init = 0
	arr_fim = arr.length - 1 #Lê a quantidade de elementos decrementando

	#Esse loop inicia com o inicio verificando se é menor que o fim
	while arr_init <= arr_fim
		mid = (arr_init + arr_fim) / 2 #Ele divide o a soma do inicio e o fim por 2
		chute = arr[mid] # O resultado de mid é comparado pelo indice no array original e (chute passa a valer o numero indicado pelo indice)

		if chute == target # Aqui e colocado uma condição para o valor obtido pela pesquisa comparando com o do usuario
			return mid
		elsif
			chute > target
			arr_fim = mid - 1 #Essa operação respresenta se o valor estiver acima, decrementa o valor obtido em mid e o arr_fim passa a ter o valor
		else 								#Como a condição não foi solucionada volta ao inicio do loop
			arr_init = mid + 1 # Nesta linha acontece que se o numero estiver a abaixo do chute e incrementado +1 a o arr_init
		end
	end

end


array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
target = 11

result = search(array, target)

#Condição para saber se o valor foi enccontrado na lista ou não
if result
	puts "valor encontrado na posição: #{result}"
else
	puts "Valor não encontrado!"
end
