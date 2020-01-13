require_relative '../config/environment'

tolkien = Author.new("J.R.R. Tolkien")
martin = Author.new("George R. R. Martin")
herbert = Author.new("Brian Herbert")

gameofthrones = Book.new("A Game of Thrones", 1995)
stormofswords = Book.new("A Storm of Swords", 1998)
dune = Book.new("Dune", 1970)
thehobbit = Book.new("The Hobbit", 1980)

assignment1 = BookAuthor.new(gameofthrones, martin)
assignment2 = BookAuthor.new(stormofswords, martin)
assignment3 = BookAuthor.new(dune, herbert)
assignment4 = BookAuthor.new(thehobbit, tolkien)
assignment5 = BookAuthor.new(thehobbit, martin) # not true but hey

puts "#{martin.name} wrote these books: #{martin.book_titles}"
puts "#{thehobbit.title} was written by these authors: #{thehobbit.author_names}"
