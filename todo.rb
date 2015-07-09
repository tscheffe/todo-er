class Todo
  include DataMapper::Resource

  property :id, Serial, key: true
  property :created_at, DateTime
  property :due_date, DateTime
  property :title, String, length: 255
  property :description, Text
end
