require 'json'

pasta_codigo = "/home/victoroliveira59/Documentos/Github/Ruby/Desenvolvendo_me_/Algoritimos_fase1"

# Percorre todos os arquivos da pasta "Código"
Dir.foreach(pasta_codigo) do |nome_arquivo|
  caminho_arquivo = File.join(pasta_codigo, nome_arquivo)

  # Verifica se é um arquivo JSON
  if File.file?(caminho_arquivo) && nome_arquivo.end_with?('.json')
    # Realize o debug com o arquivo JSON
    json_data = File.read(caminho_arquivo)
    dados = JSON.parse(json_data)

    # Faça o que precisar com os dados do arquivo JSON
    # Por exemplo, imprimir na tela:
    puts dados
  end
end
