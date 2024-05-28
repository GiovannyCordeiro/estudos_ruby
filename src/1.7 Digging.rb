# Digging é um metodo que facilida acessar determinado dado em uma lista complexa de
# combinações de arrays e symbols

data = {
  mcu: [
    { name: "Iron Man", year: 2010, actors: ["Robert Downey Jr.", "Gwyneth Paltrow"]}
  ],
  starwars: [
    {name: "A New Hope", year: 1977, actors: ["Mark Hamill", "Carrie Fisher"]}
  ]
}

# exemplo tradicional
puts data[:mcu][0][:actors][1]

# exemplo o metodo dig
puts data.dig(:mcu, 0, :actors, 1)

# A vantagem dessa abordagem é justamente o fato de que caso não tenha o elemento ele
# ira retornar nil ou uma exception.
