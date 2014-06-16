# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jacinda = User.create(email: "jacindaz@gmail.com", username: "jacinda")
jane = User.create(email: "janedoe@lala.org", username: "janelala")

Question.create(user_id: 1, title: "What is the meaning of life?",
        description: "I have been inspired by the musical Avenue Q, and thus
        must know the meaning of life to find my purpose!")

Answer.create(user_id: 2, question_id: 1, description: "Wikipedia says: The meaning of life is in the philosophical and religious conceptions of existence, social ties, consciousness, and happiness, and borders on many other issues, such as symbolic meaning, ontology, value, purpose, ethics, good and evil, free will, the existence of one or multiple gods, conceptions of God, the soul, and the afterlife. ")

# jacinda[:question_id] = 1
# jacinda[:answer_id] = 1
