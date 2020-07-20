class Author

    attr_accessor :name

    @@all = []

    # def initialize(name)
    #     @name = name
    #     @@all << self
    # end

    # def self.all
    #     @@all
    # end

    # def book_authors #many to many, because author -> bookauthor <- book #this means all of the bookAuthors of this instance 
    #     BookAuthor.all.select{
    #         |book_author| book_author.author == self
    #     }
    # end

    # def books
    #     self.book_authors.map{
    #         |book_author| book_author.book
    # } 
    # end
    def initialize(name)
        @name = name
        @@all << self
      end
  
      def self.all
          @@all
      end
  
      def book_authors
          BookAuthor.all.select{|book_author| book_author.author == self }
      end
  
      def books
          self.book_authors.map{|book_author| book_author.book}.uniq
      end
  
    





    # def books
    #     Book.all.select {
    #         |book| book.author == self
    #     }
    # end
    # def write_book(title, word_count, publisher)
    #     Book.new(title, self, word_count, publisher)
    # end

    # def total_words
    #     self.books.reduce(0) do |all_the_words, book|
    #         all_the_words + book.word_count
    #     end
    # end

    # def self.most_words
    #     self.all.max_by do |author|
    #         author.total_words
    #     end
    # end






    # def self.most_words
    #     i = 0
    #     j = 1
    #     wordHash = Book.all.map{
    #         |ele| { :author => ele.author, :words => ele.word_count }
    #     }
    #     #hash = wordHash.group_by {|element| element[:name]}
    #     while i < wordHash.length do
    #         while j < wordHash.length do
    #             if wordHash[i][:author] == wordHash[j][:author]
    #                 wordHash[i][:words] += wordHash[j][:words]
    #                 wordHash.delete(wordHash[j])
    #                 #binding.pry
    #             end
    #             j+=1
    #         end
    #         i+=1
    #     end
    #     wordHash.max_by{|k,v| v}
    #     #binding.pry
    # end

end