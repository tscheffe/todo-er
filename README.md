# TODO'er
Simple ruby webservice that does TODOs!

## Requirements
- Create a new TODO item for a given user
   - With a due date
- Mark a TODO item complete
- Retrieve the completed TODO items for a given user
- Retrieve the incomplete TODO items for a given user
- Persist all data through a later determined method
- Requests and responses as JSON

## Tech
- [Ruby 2.2.2]( http://ruby-doc.org/core-2.2.2/ )
- [Bundler]( http://bundler.io/ )
- [rbenv]( https://github.com/sstephenson/rbenv )
- [Sinatra]( http://www.sinatrarb.com/intro.html )

## Starting Server
````sh
bundle exec rackup
````
It will report which localhost port it's listening on

## API

#### Create new TODO for user 2
Request:
````
POST localhost:9292/todos/2

Headers:
Content-Type application/json

Body:
{
  "due_date": "2015-07-13T01:09:58-05:00",
  "note": "This is my test todo to see that it works!"
}
````
Response:
````
{
  "id": 5,
  "user_id": 2,
  "created_at": "2015-07-10T01:46:22-05:00",
  "due_date": "2015-07-13T01:09:58-05:00",
  "note": "This is my test todo to see that it works!",
  "completed": false
}
````

#### Mark item 6 completed
Request:
````
PUT localhost:9292/todos/6/complete
````
Response:
````
{
  "id": 6,
  "user_id": 2,
  "created_at": "2015-07-10T01:47:20-05:00",
  "due_date": "2015-07-13T01:09:58-05:00",
  "note": "This is another test todo because it works!",
  "completed": true
}
````

#### Retrieve user 2's completed items
Request:
````
GET localhost:9292/todos/2/completed
````
Response:
````
[
  {
    "id": 6,
    "user_id": 2,
    "created_at": "2015-07-10T01:47:20-05:00",
    "due_date": "2015-07-13T01:09:58-05:00",
    "note": "This is another test todo because it works!",
    "completed": true
  }
]
````

#### Retrieve user 2's uncompleted items
Request:
````
GET localhost:9292/todos/2/uncompleted
````
Response:
````
[
  {
    "id": 5,
    "user_id": 2,
    "created_at": "2015-07-10T01:46:22-05:00",
    "due_date": "2015-07-13T01:09:58-05:00",
    "note": "This is my test todo to see that it works!",
    "completed": false
  }
]
````

## Thanks To
- [This helpful github]( https://github.com/sklise/sinatra-api-example/blob/master/app.rb )
- [This dotnet man after my own heart]( http://www.dotnet-rocks.com/2014/04/28/create-a-lightweight-rest-service-using-sinatra/ )
