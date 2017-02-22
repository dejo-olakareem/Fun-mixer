# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
Event.destroy_all
20.times do
	Event.create(location:Faker::TwinPeaks.location,start_date:Faker::Date.between(2.days.ago, Date.today),end_date:Faker::Date.forward(23),start_time:Faker::Time.between(2.days.ago, Date.today, :all),end_time:Faker::Time.between(2.days.ago, Date.today, :day), price: (rand * 20 + 1).round(1))
end
