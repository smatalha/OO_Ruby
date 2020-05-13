require 'pry'
class Option

    attr_accessor :name, :destination, :amenity

    @@all = []

    def initialize(name, destination, amenity)
        @name = name
        @destination = destination
        @amenity = amenity
        @@all << self
    end

    def self.all
        @@all
    end

    def self.reset_all
        self.all.clear
    end

end