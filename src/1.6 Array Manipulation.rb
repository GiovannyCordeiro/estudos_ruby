# Adiciona a partir no lugar do elemento 3 esses elementos, e coloca o atual elemento 3 no final
arr = [1, 2, 3, 4, 5, 6, 7]
arr[3, 0] = ['testing', 'isliced']

# A partir do elemento 2 coloca essa variavel, substitui a primeira e exclui a segunda.
arr = [1, 2, 3, 4, 5, 6, 7]
arr[2, 2] = 'cat'
# puts arr

# Pega do index 2 ate o index 5
arr = [1, 2, 3, 4, 5, 6, 7]
arr[2..5]

# Pega do index 2 ate o index 5 excluindo o index 5
arr = [1, 2, 3, 4, 5, 6, 7]
arr[2...5]

# Pega na posição quatro e substitie esses elementos
arr = [1, 2, 3, 4, 5, 6, 7]
arr[4..6] = 'Giovanny', 'Cordeiro'

# Exclui os 3 primeiros elementos
arr = [1, 2, 3, 4, 5, 6, 7]
arr[0..3] = []

# Uma forma elegante de definir um array de palavras
arr_fruits = %w[apple orange pineple bluberry]
