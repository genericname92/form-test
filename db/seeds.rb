# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.create(
  title: 'Question 1',
  body: 'What is your first name?'
)

Question.create(
  title: 'Question 2',
  body: 'Evaluate yourself'
)

Question.create(
  title: 'Question 3',
  body: 'Do some math stuff'
)

Question.create(
  title: 'Question 4',
  body: 'Do some science stuff'
)

Question.create(
  title: 'Question 5',
  body: 'Do some talking stuff'
)
