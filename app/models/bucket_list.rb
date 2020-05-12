class BucketList
    
    attr_accessor :name, :content, :traveler
    # attr_reader 

    @@all = []
    def initialize(name, traveler, content)
        @name = name
        @traveler = traveler
        @content = content
        BucketList.all << self 
    end

    def self.all
        @@all
    end
    
end