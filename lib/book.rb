class Book

    attr_reader :title, :date_published

    @@all = []

    def initialize title, date_published
        @title = title
        @date_published = date_published
        @@all << self
    end

    def self.all
        @@all
    end

    def authors
        BookAuthor.all.select do |bookauthor|
            bookauthor.book == self
        end
    end

    def author_names
        authors.map do |bookauthor|
            bookauthor.author.name
        end
    end

end