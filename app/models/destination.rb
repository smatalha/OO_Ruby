class Destination
 
    attr_reader :name
    attr_accessor :price, :category
    @@all = []
    def initialize(name, price, category)
        @name = name
        @price = price
        @category = category
        Destination.all << self
    end

    def self.all 
        @@all
    end

    def self.count
        self.all.count
    end

    def self.categories
        self.all.map { |d| d.category}
    end

    def bucket_lists
        BucketList.all.select { |b| b.destination == self}
    end

    def travelers
        bucket_lists.map { |b| b.traveler}
    end

    
    def create_option(name, amenity)
        Option.new(name, self, amenity)
    end

    def amenities
        Destination.all.select do |amenity|
            amenity.name == self
        end
    end

end