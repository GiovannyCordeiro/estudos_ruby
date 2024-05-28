# Adiciona a partir no lugar do elemento 3 esses elementos, e coloca o atual elemento 3 no final
arr = [1, 2, 3, 4, 5, 6, 7]
arr[3, 0] = ['testing', 'isliced']


# Pega do index 2 ate o index 5
arr = [1, 2, 3, 4, 5, 6, 7]
arr[2..5]

# Pega do index 2 ate o index 5 excluindo o index 5
arr = [1, 2, 3, 4, 5, 6, 7]
arr[2...5]

# No indice 2 do array coloca esses elementos lá, mas n retira o elemento que esta atualmente
arr = [1, 2, 3, 4, 5, 6, 7]
arr[2,0] = ['isliced', 'queizy']

# Pega na posição quatro e substitie esses elementos
arr = [1, 2, 3, 4, 5, 6, 7]
arr[4..6] = 'Giovanny', 'Cordeiro'
puts arr
