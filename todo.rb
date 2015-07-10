class Todo
  include DataMapper::Resource

  property :id, Serial, key: true
  property :user_id, Integer
  property :created_at, DateTime
  property :due_date, DateTime
  property :note, Text
  property :completed, Boolean, default: false
end
