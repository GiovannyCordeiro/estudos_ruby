# Proc object, é um bloco de codigo que é convertido em um objeto e é
# guardado como um parametro dentro desse objeto.

# É assim que se usa callbacks geralmente em muitos programas feitos com ruby

class ProcExample
  def pass_in_block(&action)
    @store_proc = action
  end

  def use_proc(parameter)
    @store_proc.call(parameter)
  end
end

eg = ProcExample.new
eg.pass_in_block { |parameter| puts "Que doideira mermao: #{parameter}" }
eg.use_proc('Giovanny')

# Essa forma converte um bloco de codigo em uma variavel chamada block
# e retorna ela. Para chamar o bloco voce pode usar o metodo call.

def create_block_object(&block)
  block
end

bo = create_block_object { |param| puts "You called me with #{param}" }
bo.call(99)
bo.call('cat')

# Isso é tão util no ruby que existem multiplas formas de fazer
# o que mais se vê é com a sintaxe stabbly lambda

bo = ->(param) { puts "You called me with #{param}" }
bo.call 99
bo.call 'cat'

# A sintaxe sintaxe stabbly lambda é uma abreviação do Ruby kernel method lamba

bo = ->(param) { puts "You called me with #{param}" }
bo.call 99
bo.call 'cat'

# Existem pequenas diferenteças entre o comportamento do block_object (ou, em sua essencia, lambdas) e dos
# block codes feito por proc classes, lambda retornam um erro se chamados com o numero errado de argumentos, enquanto procs
# permitiram a chamada e truncará os argumentos extras.
