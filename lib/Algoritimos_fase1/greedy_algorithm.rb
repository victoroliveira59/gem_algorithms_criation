#noinspection RubyScope
def greedy (recebido, valor)

    moeda = [1, 5, 10, 25, 50]

    troco = Array.new(0)
    troco_total = recebido - valor

    while troco_total > 0
        maior_moeda = moeda.select { |moeda| moeda <= troco_total}.max
        troco << maior_moeda
        troco_total -= maior_moeda
    end
    troco
end

recebido = gets.chomp.to_i
valor = gets.chomp.to_i

result = greedy(recebido, valor)

print result
