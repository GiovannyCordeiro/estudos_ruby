#   Usando code blocks é posssivel passar
#   pedaços de código para outro código
#   dentro de uma função, com isso, é
#   possivel implementar função de callbacks!

# First example
foot = %w[apple orange pinaple]

foot.each { |fruit| puts fruit }

# Second Example, in functions
def greet
  puts 'olha o test'
  yield('Giovanny')
end

greet { |person| puts "Hello, #{person}"}
