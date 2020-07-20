Overall Assessment: 1.5/5

Additional Commens: 

There are moments of brilliance in your code but the fundamental rules for Object Relationships are consistently broken. Your book should not be initializing with an author since it no long belongs to an author. Your `author.books` method will not work as written and it does not use the single source of truth for the associations, which is the `publisher` class. Go through your code and try to spot your mistakes and fix as many as you can. Be sure to pay attention during the review and ask questions for any part of the solution that you do not understand. 