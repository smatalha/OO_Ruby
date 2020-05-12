class Category

    attr_reader :title

    @@all = []
    @@count = 0
    def initialize(title)
        @title = title
        Category.all << self
    end

    def self.all
        @@all
    end

    def self.count
        self.all.count
    end

    def destinations
        Destination.all.select { |b| b.category == self}
    end

    # def bucket_lists
    #     BucketList.map { |d| d.bucket_list}
    # end

    # def travelers
    #     bucket_lists.map { |b| b.traveler }
    # end

    def destinations_price
        destinations.map { |d| d.price}
    end
end