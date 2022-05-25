require 'faker'

puts 'creating 20 clients...'

20.times do
  Client.create(
    name: Faker::Company.name,
    email: Faker::Internet.email,
    address: Faker::Address.full_address,
    siret: Faker::Company.french_siret_number,
    phone: Faker::PhoneNumber.cell_phone_in_e164,
    interlocutor: Faker::Name.name,
    user_id: User.last.id
  )
end

puts '20 clients created!'
