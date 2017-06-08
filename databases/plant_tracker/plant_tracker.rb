require 'sqlite3'

db = SQLite3::Database.new("plants.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS plants(
    id INTEGER PRIMARY KEY,
    householdname VARCHAR(255),
    scientificname VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

def create_plant_data(db, householdname, scientificname)
  if householdname == nil
    puts "\n No plants to input."
  else
    db.execute("INSERT INTO plants (householdname, scientificname) VALUES (?, ?)", [householdname, scientificname])
  end
end

#***************** driver code ****************

loop_counter = 0

loop do
  puts "\nWould you like to look at all data, update, delete, create, or look at last entry.(enter: all, update, delete, create or last)(q to quit)"
    user_wants = gets.chomp

      if user_wants == "all"
        plants = db.execute("SELECT * FROM plants")
        plants.each do |plant|
        puts "\n#{plant['name']} is #{plant['age']}"
        end
      end

      if user_wants == "update"
        puts  "\nWhat is the house hold name of the plant you would like to update?"
          old_house_hold_name = gets.chomp
        puts "\nDo you want to update the house hold name or the scientific name of the plant?(house hold name/ scientific name)"
          hhname_or_sname = gets.chomp
          if hhname_or_sname == "house hold name"
            puts "\nWhat would you like the new house hold name to be?"
            new_house_hold_name = gets.chomp
            plantss = db.execute("UPDATE plants SET householdname='#{new_house_hold_name}' WHERE name='#{old_house_hold_name}'")
          else hhname_or_sname == "scientific name"
            puts "what do you want the scientific name to be updated to?"
            new_scientific_name = gets.chomp
            plants = db.execute("UPDATE kittens SET scientificname='#{new_scientific_name}' WHERE name='#{old_house_hold_name}'")
          end
        end

        if user_wants == "delete"
          puts "\nWhat is the name of the plant you want to delete?"
          delete_name = gets.chomp
          plants = db.execute("DELETE FROM plants WHERE name='#{delete_name}'")
          puts "\n**#{delete_name} has been deleted from data.**"
        end

        if user_wants == "create"
            puts "\nWhat is the plants house hold name?"
            h_h_n = gets.chomp

            puts "\nWhat is the plants scientific name?"
            s_n = gets.chomp
        end

        create_plant_data(db, h_h_n, s_n)

        if user_wants == "last"
            plants = db.execute("SELECT * FROM plants ORDER BY ID DESC LIMIT 1")
              plants.each do |plant|
              puts "\n#{plant['name']} is #{plant['age']}"
        end
      end

      break if user_wants == "q"

      loop_counter +=1
end
