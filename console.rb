require 'pry'
require_relative './book'
require_relative './author'
require_relative './publisher'

author1 = Author.new("adam")
author2 = Author.new("ben")
author3 = Author.new("cam")

pub1 = Publisher.new("Pub1", author1)
pub1 = Publisher.new("Pub1", author3)
pub2 = Publisher.new("Pub2", author2)

book1 = Book.new("Hello World", author1, 100, pub1)
book2 = Book.new("Javascript", author2, 200, pub1)
book3 = Book.new("Java", author3, 300, pub2)
book4 = Book.new("React", author1, 400, pub2)


#Author class checks
Author.all
author1.name
#books method
author1.books
#publishers method
author1.publishers
#write_books method
author1.write_book("Python", 800, pub1)
#most_words method
Author.most_words

#Book class checks
Book.all
book1.name
book1.author
#booksBySamePublisher
book1.booksBySamePublisher
#booksBySameAuthor
book1.booksBySameAuthor


binding.pry


