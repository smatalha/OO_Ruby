require 'pry'
class Amenity
    attr_accessor :name, :cost

    @@all = []

    def initialize(name, cost)
        @name = name
        @cost = cost
        @@all << self
    end

    def self.all
        @@all
    end
binding.pry
    def destinations
        Option.all.select do |destination|
            destination.name == self
        end
    end
end
   binding.pry 