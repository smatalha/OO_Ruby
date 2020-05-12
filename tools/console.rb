require_relative '../config/environment.rb'

tar1 = Traveler.new("Talha", "New York")

b_list1 = BucketList.new("skydiving", tar1, "I gonna do it in USA")

cat1 = Category.new("Travel")

des1 = Destination.new("USA", "$1000", b_list1, cat1)
binding.pry

puts "Done"