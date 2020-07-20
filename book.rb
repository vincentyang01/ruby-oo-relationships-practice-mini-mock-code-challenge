# require 'pry'

# class Book
#     attr_accessor :title, :word_count
#     @@all = []

#     def initialize(title, word_count)
#         @title = title
#         @word_count = word_count
#         @@all << self
#     end
#     def self.all
#         @@all
#     end
    
#     def book_authors
#         BookAuthor.all.select{
#             |book_author| book_author.book == self
#         }
#     end

#     def authors
#         self.book_authors.map{
#             |book_author| book_author.author
#         }
#     end
# end
class Book 

    attr_reader :title, :word_count

    @@all = []
    
    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end

    def book_authors
        BookAuthor.all.select{|book_author| book_author.book == self }
    end

    def authors
        self.book_authors.map{|book_author| book_author.author}.uniq
    end
    



end