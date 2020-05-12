class Traveler

    attr_reader :name, :address
    attr_accessor 
    

    @@all = []
    def initialize(name, address)
        @name = name
        @address = address
        Traveler.all << self
    end

    def self.all
        @@all
    end
    

end