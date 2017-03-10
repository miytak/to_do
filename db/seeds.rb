# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  unless Task.any?
    Task.create(title: 'room cleaning', due_date: 1.day.since)
    Task.create(title: 'reading books', due_date: 2.days.since)
    Task.create(title: 'learning english ', due_date: 1.year.since)
  end
end
