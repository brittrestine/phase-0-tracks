require 'sqlite3'

#************** authors table *************

db = SQLite3::Database.new("author.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS author(
  id INTEGER PRIMARY KEY,
  name_of_author VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

#*************** book table ******************

db_2 = SQLite3::Database.new("book.db")
db_2.results_as_hash = true

create_table_cmd_2 = <<-SQL
  CREATE TABLE IF NOT EXISTS book(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    authors_id INT,
    FOREIGN KEY (authors_id) REFERENCES authors(id)
  )
SQL

db_2.execute(create_table_cmd_2)

#************** driver code ***************

loop_counter = 0

puts "Welcome to my book collection, help me keep track of books and the authors who wrote them!"

loop do

  puts "\nWould you like to look at all of the authors and the books they wrote? Or would you like to input, update or delete an author from the list.\n(enter: all, input, update or delete)(enter:q to quit)"
    user_wants = gets.chomp.capitalize

  if user_wants == "All"
    books = db_2.execute("SELECT * FROM book")
    authors = db.execute("SELECT * FROM author")
      books.each do |b|
      authors.each do |a|
        if b['authors_id'] == a['id']
          puts "\n#{b['id']}: #{a['name_of_author']} is the author of #{b['title']}"
        end
      end
      end
  end

  if user_wants == "Input"
    puts "\nWhat is the Authors name you would like to input?"
    name_of_author = gets.chomp.capitalize

    db.execute('INSERT INTO author (name_of_author) VALUES (?)',[name_of_author])

    puts "\nWhat is the title of the book they wrote?"
      title = gets.chomp.capitalize

    authors = db.execute("SELECT * FROM author")
    authors.each do |a|
      if a['name_of_author'] == name_of_author
        books = db_2.execute("INSERT INTO book (title, authors_id) VALUES (?, ?)",[title, a['id']])
      end
    end

    puts "\n**#{name_of_author} is the author of #{title}**"
  end

  if user_wants == "Update"
    puts "\nDo you want to update the authors name or a book title?\n(authors name / book title)"
      aname_or_btitle = gets.chomp.capitalize

    if aname_or_btitle == "Authors name"
      puts  "\nWhat is the name of the author you would like to update?"
        a_name = gets.chomp.capitalize
      puts "\nWhat would you like the authors name to be updated to?"
        new_a_name = gets.chomp.capitalize

      db.execute("UPDATE author SET name_of_author='#{new_a_name}' WHERE name_of_author='#{a_name}'")

      puts "\n**You've updated #{a_name} to #{new_a_name}**"

    else aname_or_btitle == "Book title"

      puts "\nwhat is the title of the book you want to update?"
        t_name = gets.chomp.capitalize
      puts "\nWhat is the new title name?"
        new_tname = gets.chomp.capitalize

      db_2.execute("UPDATE book SET title='#{new_tname}' WHERE title='#{t_name}'")

      puts "\n**You've updated #{t_name} to #{new_tname}**"
    end
  end

  if user_wants == "Delete"
    puts "\nWhat book would you like to delete?"
      delete_name = gets.chomp.capitalize

    db_2.execute("DELETE FROM book WHERE title='#{delete_name}'")

    puts "\n**#{delete_name} has been deleted from data.**"
  end

  break if user_wants == "Q"

  loop_counter += 1

end