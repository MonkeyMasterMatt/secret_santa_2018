# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

santa = User.create(name: "Santa");
draw_1 = Draw.create(title: "First Draw", description: "This will be a super fun draw");
draw_2 = Draw.create(title: "Second Draw", description: "This one as well!");
