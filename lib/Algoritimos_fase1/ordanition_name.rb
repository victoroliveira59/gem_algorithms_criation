def name (arr)
    arr.sort
end

lista = %w[Carla José Maria Leandro Pablo Ana]

result = name(lista)
puts "Está é minha lista ordenada alfabética #{result}"