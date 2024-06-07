#   Passando argumentos no CLI
#
#   Existem dois metodos para conseguir captar esses argumentos:
#
#   A primeira é a classe ARGV, a classe ARGV pega os dados
#   que voce passa no arquivo de forma direta

# ruby cmd_line first_argument second_argument
puts "Your arguments sizes is #{ARGV.size}"
puts ARGV

# Answers
# Your arguments sizes is 2
# ['first_argument', 'second_argument']

#   A segunda é quando voce quer passar argumentos, mas esses
#   por sua vez são arquivos. Nesse caso voce deve utilizar
#   a classe ARGF.
