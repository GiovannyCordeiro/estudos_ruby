instrumental_section = {
  'teather' => 'testing'
}

# urls_buys = {
#   :shopy => 'www.html.br'
# }

urls_buys = {
  shopy: 'www.html.br'
}

# shopify = 'www.html.br'
# cuponomia = 'www.html.br'

# urls_buys[:shopy] = 'fjslkfjs''
puts urls_buys[:shopy]
puts instrumental_section['teather']

radation = 100


# statamente modifier

# if radation > 300
#   puts 'danger'
# end

# puts 'danger' if radation > 300

# square = 4
# while square < 4
#   square *= square
# end

# square *= square while square < 4

# code blocks, é com isso que posteriormente vai ser implementado callbacks
# é por meio de block codes, que conseguimos colocar pedaços de códigos em
# oturas funções, por exemplo:
foo = ['apple', 'orange', 'pinple']

foo.each { |fruit| puts "This fruit is #{fruit}" }

def greet
  puts 'olha o test'
  yield('Giovanny')
  yield('Giovanny')
end

greet { |person| puts "Hello #{person}" }
