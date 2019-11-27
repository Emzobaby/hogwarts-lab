require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('models/student.rb')
also_reload('models/*')

#index
get '/students' do
  @students = Student.all()
  erb(:index)
end

#New
get '/students/new' do
  erb(:new)
end
