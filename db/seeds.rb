# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "user1", password: "user1pass")
User.create(username: "user2", password: "user2pass")
User.create(username: "user3", password: "user3pass")
User.create(username: "user4", password: "user4pass")
User.create(username: "user5", password: "user5pass")
Message.create(body: "user5message1", user_id: 5)
Message.create(body: "user5message2", user_id: 5)
Message.create(body: "user5message3", user_id: 1)