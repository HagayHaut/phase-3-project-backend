puts "🌱 Seeding spices..."

# Seed your database here
Category.create(name: 'Work')
Category.create(name: 'Personal')
Category.create(name: 'Yard')
Category.create(name: 'Home')


Task.create(description: 'Do laundry', completed: false, due_by: nil, category: Category.all.sample)
Task.create(description: 'Feed Dog', completed: false, due_by: nil, category: Category.all.sample)
Task.create(description: 'Make project', completed: false, due_by: nil, category: Category.all.sample)
Task.create(description: 'eat food', completed: false, due_by: nil, category: Category.all.sample)
Task.create(description: 'practice algorithms', completed: false, due_by: nil, category: Category.all.sample)
Task.create(description: 'drink tea', completed: false, due_by: nil, category: Category.all.sample)

puts "✅ Done seeding!"
