class Category

    attr_reader :title

    @@all = []
    def initialize(title)
        @title = title
        Category.all << self
    end

    def self.all
        @@all
    end

end