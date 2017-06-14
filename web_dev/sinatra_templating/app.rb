# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'


db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/remove' do
  erb :remove_student
end

get '/student/name' do
  @n = params[:name]
  @student = db.execute("SELECT * FROM
    students WHERE name=?", [@n])
  erb :student_name
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/remove' do
  db.execute("DELETE FROM students WHERE name=?", params['name'])
  redirect '/'
end
# add static resources