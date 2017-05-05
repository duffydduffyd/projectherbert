# index
get '/children' do
  @children = Child.where("donated = false")
  erb :"index"
end

# new
get '/children/new' do

end

# create
post '/children' do

end

# show
get '/children/:id' do
  @child = Child.find(params[:id])
  erb :"children/show"
end

# edit
get '/children/:id/edit' do

end

# update
put '/children/:id' do

end

# delete
delete 'children/:id' do

end
