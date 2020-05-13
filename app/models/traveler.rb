class Traveler

    attr_reader :name, :address
    # attr_accessor 
    

    @@all = []
    def initialize(name, address)
        @name = name
        @address = address
        Traveler.all << self
    end

    def self.all
        @@all
    end

    def categories
        self.all.select { |b| b.traveler == self}
    end
    
    def bucket_lists
        BucketList.all.select { |b| b.traveler == self}
    end

    def content
        bucket_lists.map { |b| b.content}
    end

    def destinations
        bucket_lists.map { |b| b.destination}
    end

 
end 