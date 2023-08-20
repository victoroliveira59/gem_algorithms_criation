array = (10..100).to_a

print "Insira um número: "
number = gets.chomp.to_i

found = false

array.each do |element|
    if element == number
        puts "Valor encontrado #{element}"
        found = true
        break
    end
end

puts "Valor não encontrado" unless found
