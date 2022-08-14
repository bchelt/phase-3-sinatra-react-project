puts "🌱 Seeding spices..."

# Seed your database here
c1 = Category.create(name: "Shopping")
c2 = Category.create(name: "Cleaning")
c3 = Category.create(name: "Misc")

t1 = Todo.create(task: "Take out the trash", category_id: c2.id)
t2 = Todo.create(task: "Get bananas", category_id: c1.id)
t3 = Todo.create(task: "Clean room", category_id: c2.id)
t4 = Todo.create(task: "Create todo application", category_id: c3.id)

puts "✅ Done seeding!"
