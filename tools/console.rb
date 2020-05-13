require_relative '../config/environment.rb'

cat1 = Category.new("Travel")

tar1 = Traveler.new("Talha", "New York")
tar2 = Traveler.new("Joe", "New Jersey")

des1 = Destination.new("USA", "$1000", cat1)

b_list1 = BucketList.new("skydiving", tar1, des1, "I gonna do it in USA")


ame1 = Amenity.new("water view accommodations", "$350")

opt1 = Option.new("Option 1", des1, ame1)

binding.pry

puts "Done"