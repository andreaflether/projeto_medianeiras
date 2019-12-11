15.times do
  Pessoa.create([{
    nome: Faker::Name.name,
    dt_nascimento: Faker::Date.birthday(min_age: 10, max_age: 65), #=> "Mar, 28 Mar 1986"
    dt_entrada: Faker::Date.in_date_period,
    idade: Faker::Number.between(from: 10, to: 65) #=> 7
    }])
  Voluntario.create([{
    nome: Faker::Name.name,
    dt_nascimento: Faker::Date.birthday(min_age: 18, max_age: 65),
    escolaridade: 'Ensino Superior',
    especializacao: Faker::Educator.subject,
    dt_entrada: Faker::Date.in_date_period
  }])

end
