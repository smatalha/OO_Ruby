# OO_Ruby
Home work project

**BRANCH:JJACKMAN**
*Domain/Models:*

Traveler initializes with a name and address. 
A traveler can have many Bucket Lists.

BucketList initializes with a name, a traveler, a destination, and content.
Bucket List is a join between Traveler and Destination. 

A Destination initializes with a name, a price and a category.
A Destination can belong to many bucket lists.
   <!-- **added one relationship: -->
Destination has many Amenities through Options

Category initializes with a title.
Categories can belong to many destinations.
 
   <!-- **added two models: -->
Amenity initializes with a name and a cost
Amenity can have many destinations through Options

Option initializes with a Name, a Destination and an Amenity

*Methods:*

Bucket List has five class methods:
    Self.all will return an array of all Bucket Lists.
    Self.reset_all will clear/reset all the Bucket Lists, returning an empty array.
    Self.travelers will return an array of all travelers who have bucket lists.
    Self.destinations will return an array of all destinations that are included in currently created bucket lists.
    Self.categories will return an array of all categories in current bucket lists.

Category has two class methods and two instance methods:
    Self.all will return an array of all categories.
    Self.count will return an integer number of categories
    #destinations will return an array or all destinations that category belongs to.
    #destinations_price returns an array of the prices of all the destinations that a category belongs to.

Destination has three class methods and two instance methods:
    Self.all returns an array of all of the destinations.
    Self.count returns an integer number of destinations.
    self.categories returns an array of all the categories that belong to all of the destinations.
    #bucket_lists returns a list of all the bucket lists that have this destination.
    #travelers returns an array of all the travelers whose bucket lists have this destination.
    <!-- **added two instance methods: -->
    #create_options will create a new Option for this destination, given an argument of an amenity
    #amenities returns an array of all the amenities that belong to this destination

Traveler has one class method and four instance methods:
    Self.all returns an array of all travelers
    #categories returns an array of all categories which belong to the bucket lists of an instance of traveler
    #bucket_lists returns an array of all bucket lists which belong to this traveler.
    #content returns an array of all the content from all the bucket lists that belong to this instance of traveler.
    #destinations returns an array of all of the destinations which belong to all the bucket lists that belong to this traveler.
<!-- **Added two Models with methods: -->

Amenity has one class method and one instance method:
    Self.all returns an array of all the available amenities
    #destinations returns an array of the destinations which belongs to this amenity

Option has two class methods:
    Self.all returns an array of all Options
    Self.reset_all will delete all Options and return an empty array

