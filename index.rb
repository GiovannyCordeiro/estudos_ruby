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
puts "the cents is #{b1.price_in_cents}"

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



class Book
  attr_accessor :title
end

class Book
  def uppercase_title
    title.upcase
  end
end
