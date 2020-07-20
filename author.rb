require 'pry'

class Author
    attr_accessor :name
    @@all = []

    def initialize(name, totalWords = 0)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def books
        Book.all.select {
            |book| book.author == self
        }
    end

    def write_book(title, word_count, publisher)
        Book.new(title, self, word_count, publisher)
    end

    def self.most_words
        i = 0
        j = 1
        wordHash = Book.all.map{
            |ele| { :author => ele.author, :words => ele.word_count }
        }
        #hash = wordHash.group_by {|element| element[:name]}
        while i < wordHash.length do
            while j < wordHash.length do
                if wordHash[i][:author] == wordHash[j][:author]
                    wordHash[i][:words] += wordHash[j][:words]
                    wordHash.delete(wordHash[j])
                    #binding.pry
                end
                j+=1
            end
            i+=1
        end
        wordHash.max_by{|k,v| v}
        #binding.pry
    end
end