class Destination
 
    attr_reader :name
    attr_accessor :price, :bucket_list, :category
    @@all = []
    def initialize(name, price, bucket_list, category)
        @name = name
        @price = price
        @bucket_list = bucket_list
        @category = category
        Destination.all << self
    end

    def self.all 
        @@all
    end

    # def method_name
        
    # end
end