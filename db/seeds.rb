# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all
HistoryTracker.destroy_all

user = User.create!({
  email: 'rotberj@gmail.com',
  password: 'password',
  password_confirmation: 'password'
})

user.posts.create!([
  {
    title: 'Our Summer To-dos: What We’re Working On, Part Deux',
    body: 'Nothing fuels the engines ‘round here more than dialogue with the folks we serve. So, I’m pumped to share the 2nd rev of our, “here’s what we’re working on to make things better” update. And the more input the merrier — please fire away at ideas@territoryfoods.com or join here if you’ve got some to share!'
  },
  {
    title: 'Nutrition in the Age of Personalization',
    body: 'At the most basic level we’re trying to make intentional eating, i.e. eating with some sort of health goal in mind, as tasty and delicious as it is good for you. That two-step, unquestionable health + real flavor, can be tricky because health goals, and the nutrition that supports, them are so diverse.'
  },
  {
    title: 'Our Spring To-dos',
    body: 'In the spirit of expanding the dialogue with you we talked about last month, I’m writing with an update we hope to make a regular quarterly feature… the cleverly named, “What we’re working on this quarter to make things better” update.

      Like any to-do list, this one’s flexible and stuff may shift in or out, but hopefully gives you a good sense of the big rocks on our improvement docket this spring.'
  }
])
