require 'sinatra'

post '/todos/:user_id' do
  content_type :json

  params_json = JSON.parse(request.body.read)

  todo = Todo.new(params_json)
  todo.user_id = params[:user_id].to_i

  if todo.save
    todo.to_json
  else
    halt 500
  end
end

get '/todos/:user_id/completed' do
  content_type :json

  user_id = params[:user_id].to_i
  todos = Todo.all(:user_id => user_id, :completed => true)

  todos.to_json
end

get '/todos/:user_id/uncompleted' do
  content_type :json

  user_id = params[:user_id].to_i
  todos = Todo.all(:user_id => user_id, :completed => false)

  todos.to_json
end

put '/todos/:id/complete' do
  content_type :json

  todo = Todo.get(params[:id].to_i)
  todo.completed = true

  if todo.save
    todo.to_json
  else
    halt 500
  end
end
