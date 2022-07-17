puts "🌱 Seeding spices..."

# Seed your database here
Category.create(name: 'Work')
Category.create(name: 'Personal')
Category.create(name: 'Chores')
Category.create(name: 'Shopping')
Category.create(name: 'Miscellaneous')
Category.create(name: 'Exercise')

puts "✅ Done seeding!"
