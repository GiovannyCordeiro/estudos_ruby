# Enumerators and iterator is equal in ruby

# Enumarators são funções que executam para todos os elementos
# de um conjunto de dados uma dada função.

# em uma grande cadeia de metodos é possivel que voce queira debugar em
# algum momento para descobrir qual é o metodo defeituoso, separar toda
# logica é trabalhoso demais, mas o ruby fornece um metodo para isso,
# chamado de tap, o metodo tap, o metodo tap pega o receptor original do metodo
# ou seja o parametro que esta sendo passado, executa para o calllback fucntion
# e retorna o mesmo receptor para o metodo original para ser executado.

require_relative './1.3 wordfrequency/words_from_string'

raw_text = 'The problem breaks down into two parts. First, given some text
as a string, return a list of words. That sounds like an array. Then, build
a count for each distinct word. That sounds like a use for a hash---we can
index it with the word and use the corresponding entry to keep a count.'

raw_text = 'The problem breaks down into two parts. First, given some text
as a string, return a list of words. That sounds like an array. Then, build
a count for each distinct word. That sounds like a use for a hash---we can
index it with the word and use the corresponding entry to keep a count.'

puts(words_from_string(raw_text)
  .tally
  .sort_by { |_word, count| count }
  .tap { |result| puts "Sorted tally: #{result}\n\n" }
  .last
  .tap { |result| puts "The last result: #{result}\n\n" }
  .reverse
  .tap { |result| puts "Reversed result: #{result}\n\n" }
  .map { |word, count| "#{word}: #{count}" })
