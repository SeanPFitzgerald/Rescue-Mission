# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: "jonsnow", provider: "github")
u2 = User.create(username: "nedstark", provider: "facebook")
u3 = User.create(username: "jaimelannister", provider: "twitter")

q1 = Question.create(title: "Are you sure that this is cool?",
                  description: "Checking if this should be at least fifty characters",
                  user: u1)

q1 = Question.create(title: "Are you sure that this is dumb?",
                  description: "Making sure that this is at least fifty characters though",
                  user: u1)

q1 = Question.create(title: "Are you sure that this is rad?",
                  description: "Could all this be rad as long as there is at least fifty characters",
                  user: u2)

q1 = Question.create(title: "Are you sure that this is baller?",
                  description: "Can anything be baller if it is at least fifty characters",
                  user: u3)
