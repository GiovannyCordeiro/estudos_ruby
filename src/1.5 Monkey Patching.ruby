# Monkey Patching

# No ruby é possivel fazer auterações em classes em
# qualquer momento que voce quiser, pelo fato delas
# sempore estarem abertas para adicionar ou modificar
# classes ou propriedades.

# A esse tipo de funcionalidade se da o nome de
# Monkey patching

# Ex:

class Book
  attr_ace :title
end

# Mais tarde...

class Book
  def uppercase_title
    title
    title.upcase
  end
end
