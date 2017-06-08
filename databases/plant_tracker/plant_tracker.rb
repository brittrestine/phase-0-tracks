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
  if householdname == householdname
    db.execute("INSERT INTO plants (householdname, scientificname) VALUES (?, ?)", [householdname, scientificname])
  end
end

#***************** driver code ****************

loop_counter = 0

loop do
  puts "\nWould you like to look at all of the data, update data, delete data, create data, or look at last data entry.\n(enter: all, update, delete, create or last)(q to quit)"
    user_wants = gets.chomp

      if user_wants == "all"
        plants = db.execute("SELECT * FROM plants")
        plants.each do |plant|
        puts "\n#{plant['householdname']} is #{plant['scientificname']}"
        end
      end

      if user_wants == "update"
        puts  "\nWhat is the house hold name of the plant you would like to update?"
          old_house_hold_name = gets.chomp
        puts "\nDo you want to update the house hold name or the scientific name of the plant?\n(house hold name / scientific name)"
          hhname_or_sname = gets.chomp
          if hhname_or_sname == "house hold name"
            puts "\nWhat would you like the new house hold name to be?"
            new_house_hold_name = gets.chomp
            plants = db.execute("UPDATE plants SET householdname='#{new_house_hold_name}' WHERE householdname='#{old_house_hold_name}'")
          else hhname_or_sname == "scientific name"
            puts "\nwhat do you want the scientific name to be updated to?"
            new_scientific_name = gets.chomp
            plants = db.execute("UPDATE plants SET scientificname='#{new_scientific_name}' WHERE householdname='#{old_house_hold_name}'")
          end
        end
=begin
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

        if user_wants == "last"
            plants = db.execute("SELECT * FROM plants ORDER BY ID DESC LIMIT 1")
              plants.each do |plant|
              puts "\n#{plant['householdname']} is #{plant['scientificname']}"
        end
      end
=end
   # create_plant_data(db, h_h_n, s_n)

      break if user_wants == "q"

      loop_counter += 1
end
