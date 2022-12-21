##################################################################
###### DESTROY ALL
puts "Reboot"
User.destroy_all
Tree.destroy_all
puts "Create new seed"
##################################################################
###### CREATE 2 USER
puts "Creating Users"
john = User.create!(first_name: 'John', last_name: 'Doe', email: 'john@gmail.com', password: 'azerty')
nico = User.create!(first_name: 'Nico', last_name: 'Fornaro', email: 'nico@gmail.com', password: 'azerty')

##################################################################
###### CREATE 4 TREE
puts "Creating Tree"
Tree.create!(name: 'John’s apple tree', address: '20 rue des Capucins 69001 Lyon', description: 'This apple tree produces both sweet and sour apples. They will be perfect to cut a little hunger, or enjoy a juicy apple for the dessert.', price_per_year: 175, quantity_per_year: 5, fruit_type: 'Apple', user: john)
Tree.create!(name: 'John’s apple tree', address: '20 rue des Capucins 69001 Lyon', description: 'This Apricot tree produces both sweet and sour Apricot. They will be perfect to cut a little hunger, or enjoy a Apricot apple for the dessert.', price_per_year: 190, quantity_per_year: 7, fruit_type: 'Apricot', user: nico)
Tree.create!(name: 'John’s apple tree', address: '20 rue des Capucins 69001 Lyon', description: 'This Cherry tree produces both sweet and sour Cherry. They will be perfect to cut a little hunger, or enjoy a juicy Cherry for the dessert.', price_per_year: 200, quantity_per_year: 10, fruit_type: 'Cherry', user: john)
Tree.create!(name: 'John’s apple tree', address: '20 rue des Capucins 69001 Lyon', description: 'This Mango tree produces both sweet and sour Mango. They will be perfect to cut a little hunger, or enjoy a juicy Mango for the dessert.', price_per_year: 260, quantity_per_year: 4, fruit_type: 'Mango', user: nico)

##################################################################
puts "End seed"
