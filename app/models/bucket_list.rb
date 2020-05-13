class BucketList
    
    attr_accessor :name, :content, :traveler, :destination
    # attr_reader 

    @@all = []
    def initialize(name, traveler, destination, content)
        @name = name
        @traveler = traveler
        @destination = destination
        @content = content
        BucketList.all << self 
    end

    def self.all
        @@all
    end

    def self.reset_all
        self.all.clear
    end    
   
    def self.travelers
        self.all.map { |b| b.traveler}
    end

    def self.destinations
        self.all.map { |b| b.destination}
    end

    def self.categories
        self.destinations.map { |d| d.category}
    end

 


end