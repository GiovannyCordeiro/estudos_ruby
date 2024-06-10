# Se voce tiver um nome de variavel que se repete dentro do seu
# código de escopo local e escopo global, voce pode resolver isso usando
# iterators usando o ponto e virgula para definir isso.

square = 'some shape'
sum = 0
[1, 2, 3, 4].each do |value; square|
  square = value * value # A variavel square é uma variavel diferente da global
  sum += square
end

# voce também pode em vez de usar essa anotação para definir especificamente qual
# o nome dos parametros
[11, 12].each { |thing| puts thing }

# usar a notação _1 para definir o primeiro argumento, para ir pegando os demais
# é só ir aumentando os numeros _2, _3, ...
[11, 12].each { puts _1 }

puts square
puts sum
