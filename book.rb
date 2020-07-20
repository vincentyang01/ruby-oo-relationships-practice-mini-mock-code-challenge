require 'pry'

class Book
    attr_accessor :name, :author, :word_count, :publisher
    @@all = []

    def initialize(name, author, word_count, publisher)
        @name = name
        @author = author
        @word_count = word_count
        @publisher = publisher
        @@all << self
    end
    def self.all
        @@all
    end
    
    def booksBySamePublisher
        Book.all.select {
            |book| book.publisher == self.publisher
        }
    end
    def booksBySameAuthor
        Book.all.select {
            |book| book.author == self.author
        }
    end
end