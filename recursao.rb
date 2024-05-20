# recursao simples
def fatorial_recursao(number)
  number.zero? ? 1 : number * fatorial_recursao(number - 1)
end

# implementação interativa
def fatorial_it(number_input)
  number = number_input
  acc = 1
  for i in 1..number
    acc *= i
  end
  acc
end

# recursão em cauda
def fatorial_cal(number, current_value)
  if number == 0
    current_value
  else
    fatorial_cal(number - 1, current_value * number)
  end
end

def fibonacci(num)
  if [1, 2].include?(num)
    1
  else
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end

puts fibonacci(4)
