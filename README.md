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
- [Thin]( http://code.macournoyer.com/thin/doc/files/README.html )

## Starting Server
````sh
bundle exec rackup
````
It will report which localhost port it's listening on

## Thanks To
- [This helpful github]( https://github.com/sklise/sinatra-api-example/blob/master/app.rb )
- [This dotnet man after my own heart]( http://www.dotnet-rocks.com/2014/04/28/create-a-lightweight-rest-service-using-sinatra/ )
