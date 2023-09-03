def search (arr)
   arr.min
end

def ordenation (list)
    list.count
end

def negativos (num)
    new_array = []
    num.each_with_index do |_, i | #Negativando os numeros de um array, os que são positivos viram negativos e vice versa
        new_array << num[i] * -1
    end
    new_array
end

def verificar_list (numb) # Essa função verifica se todos os elementos da lista são pares se for imprimi true senão false
    numb.none? do |element|
        element.even?
    end
end

def deletado (enum)
    numeros = enum.dup #Usado o (.dup) para fazer uma cópia do array original
    numeros.delete_at(2) # Utilizamos o delete_at() para deletar um elemento com base no seu indice
    numeros
end
# lista = [31, 49, 1, 2, 7, 9]

# menor = search(lista)
# puts menor
#
# contador = ordenation(lista)
# puts contador
#
# negativo = negativos(lista)
# print negativo

# resultado = verificar_list(lista)
# puts resultado

# new_result = deletado(lista)
# print new_result