require 'sinatra'


get '/' do
  "This is my baller todo api!"
end


get '/todos/' do
  content_type :json

  # TODO: (hehehe) filter by is_completed and sort by due_date
  todos = Todo.all(:order => :due_date.desc)

  todos.to_json
end

post '/todos/' do
  content_type :json

  todo = Todo.new(params)

  if todo.save
    todo.to_json
  else
    halt 500
  end
end
