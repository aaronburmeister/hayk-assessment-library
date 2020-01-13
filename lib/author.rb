class Author

    attr_reader :name

    @@all = []

    def initialize name
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        BookAuthor.all.select do |bookauthor|
            bookauthor.author == self
        end
    end

    def book_titles
        books.map do |bookauthor|
            bookauthor.book.title
        end
    end

end