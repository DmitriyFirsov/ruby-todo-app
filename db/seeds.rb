# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


for user_n in 0..10
  user = User.new(name: "user_" + user_n.to_s, email: "user_" + user_n.to_s + "@example.com")
  for task_n in 0..10
    user.tasks.new(name: 'task name ' + task_n.to_s, description: 'some description ' + task_n.to_s )
  end
  user.save
end