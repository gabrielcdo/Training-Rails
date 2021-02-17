# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i| 
    Author.create(
        nome: Faker:: Name.name
    )
   
end
20.times do |i| 
    Client.create(
        nome: Faker:: Name.name
    )
end
5.times do |i| 
    Category.create(
        nome: Faker::Movie.title
    )
end


10.times do |i| 
    Book.create(
        nome: Faker::Book.title ,
        category: Category.all.sample ,
        stock:Faker::Number.within(range: 1..30) , 
        author: Author.all.sample

    )
end

5.times do |i| 
    Reservation.create(
      book: Book.all.sample , 
      client: Client.all.sample , 
      user: User.all.sample

    )
end
