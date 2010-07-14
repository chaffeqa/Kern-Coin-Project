# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Category.create([
    { :title => 'Accessories' },
    { :title => 'Pennies' },
    { :title => 'Dimes' },
    { :title => 'Quarters' },
    { :title => 'Silver Dollars' }
])

accessories = Category.where(:title => 'Accessories').first
accessories.items.create([
  {:name => 'Bookmark', :cost => '12.52', :details => 'Just a bookmark. I am serious.', :item_id => '123154123', :for_sale => true, :display => true},
  {:name => 'Glasses', :cost => '25.99', :details => 'Just a Glasses. I am serious.', :item_id => 'd12312311e1', :for_sale => true, :display => true},
  {:name => 'Coin Display Case', :cost => '51.00', :details => 'This is by far the coolest way to display your collection. Please use it wisely.', :item_id => '1e3121rt1rt12', :for_sale => true, :display => true},
  {:name => 'Pen', :cost => '2.11', :details => 'Just a Pen. I am serious.', :item_id => '12315421323123', :for_sale => true, :display => true}
])
