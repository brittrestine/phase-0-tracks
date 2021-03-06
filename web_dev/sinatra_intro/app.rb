# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
#get '/' do
 # "#{params[:name]} is #{params[:age]} years old."
#end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#******** challenge 9.4 ***************

# 1.Create a '/contact' route that displays an address

#localhost:9393/contact

get '/contact' do
  "112 west via del carmel<br>
  Santa Maria, CA 97701"
end

# 2. Create a '/great_job' route that takes a persons name as a query parameter and say "Good job, [person]!". If query parameter is not present just say "Good job".

#localhost:9393/great_job<leave blank or add name like '?name=britt' >

get '/great_job' do
  person = params[:name]
  if person
    "Great job #{person}!"
  else
    "Great job!"
  end
end

# 3.Create a route that uses route parameters to add two numbers and respond with the result.The data types are tricky here -- when will the data need to be (or arrive as) a string?

#localhost:9393/adder/<add route parameter like '10+10'>

get '/adder/:addition' do
  addition = params[:addition]
  "The result of the addition is #{eval(addition)}"
end

# 4. Optional bonus: Make a route that allows the user to search the database in some way -- maybe for students who have a certain first name, or some other attribute. If you like, you can simply modify the home page to take a query parameter, and filter the students displayed if a query parameter is present.

# localhost:9393/<add age query like '?age=103'>

get '/' do
  age = params[:age]
  student = db.execute("SELECT * FROM students WHERE age=?", [age])
  response = ""
student.each do |student|
  response << "The student name with the age of #{age} is #{student['name']}<br>"
  end
  response
end
