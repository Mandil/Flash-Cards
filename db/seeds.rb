# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Deck.create(title: "State Capitols")
Deck.create(title: "Puppies")
Deck.create(title: "Kitties")
Deck.create(title: "Baby Elephants")
Deck.create(title: "Dragons")

Card.create(question: 'What is the capital of new york?', answer: 'albany', deck_id: 1)
Card.create(question: 'What is the capital of california?', answer: 'sacremento', deck_id: 1)
Card.create(question: 'What is the capital of texas?', answer: 'austin', deck_id: 1)
