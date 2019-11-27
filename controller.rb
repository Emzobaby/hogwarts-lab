require('sinatra')
require('sinatra/contrib/all')
require('pry')
also_reload('models/*')

require_relative('./controllers/student_controller.rb')
require_relative('./controllers/house_controller.rb')
