require_relative('../models/house.rb')
require_relative('../models/student.rb')

#index
get '/houses' do
  @houses = House.all
  erb(:"houses/index")
end

#show
get '/houses/:id' do
  id = params[:id].to_i
  @house = House.find(id)
  erb(:'houses/show')
end
