# o LSB ruby nao funciona pq meu ruby esta em uma versao anterior
# da qual ele necessita, preciso atualizar o ruby para essa versao
# consigo fazer por meio disso aqui, atualizar para versao 3.3.1 (versao atual mais estavel)
# https://www.treinaweb.com.br/blog/gerenciar-versoes-do-ruby-com-rvm.

# depois fazer as configuracoes necessarias

# O initilize method defina o estado que a classe vai ficar quando
# for instanciada, com suas variaveis de instancia!

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  attr_reader :isbn
  attr_accessor :price

  def to_s
    "ISBN: #{@isbn}, Price: #{@price}"
  end

  def price_in_cents
    (@price * 100).round
  end
end

b1 = BookInStock.new('isbn1', 3)
# puts b1.isbn
# puts b1.price
# puts '-----'
# puts "the cents is #{b1.price_in_cents}"

b2 = BookInStock.new('isbn2', 3.14)
# puts b2.price

b3 = BookInStock.new('isbn3', '5.67')
# puts b3

class MyClass
  def method1; end
  def method2; end
  def method3; end
  def method4; end
  def method5; end

  public :method1, :method4
  protected :method2
  private :method3, :method5
end

class AnotherClass
  private def method1
    # fdjsk
  end
  public def method2; end
  protected def method3; end
end

person1 = 'Tim'
# person1.freeze
person2 = person1.dup
person1[0] = 'J'

# puts "Person 1 is: #{person1}"
# puts "Person 2 is: #{person2}"

watherver_hash = {
  'dog' => 'canine',
  'cat' => 'feline',
  'bear' => 'ursine'
}

# puts watherver_hash.length
# puts watherver_hash['dog']

wt_symbols = {
  dog: 'canine',
  cat: 'feline',
  bear: 'ursine'
}
# puts wt_symbols[:bear]

def count_frequency(word_list)
  counts = Hash.new(0)
  word_list.each do |word|
    counts[word] += 1
  end
  counts
end

# O que é o parallel assignment?
# é quando ocorre basicamente uma atribuição de duas variaveis paralelamente

i1 = 1
i2 = 1

i1, i2 = i2, i1 + i2

# o que isso ta dizendo?
# atribui para a variavel i1 o valor atual de i2, que nesse caso é 1
# atribui para a variavel i2 a soma do valor atual de i1 e i2, que nesse caso é 2

# [1, 3, 5, 7, 9].each { |number| puts number }

value = [1, 3, 5, 7, 9].find { |number| number + 2 > 6 }
# puts value

arr = ['giovanny', 'douglas', 'maria', 3, { name: 'fodasej' }]
# print arr.push('outra coisa')
# arr2 =

arr_num = [1, 3, 5, 7]
# puts arr_num.reduce(0) { |sum, number| sum + number }
# puts(arr_num.reduce(1) { |acc, number| acc * number })

class File
  def self.open_and_process(*args)
    file = File.open(*args)
    yield file
    file.close
  end
end

File.open_and_process('testfile', 'r') do |file|
  while line = file.gets
    puts line
  end
end
