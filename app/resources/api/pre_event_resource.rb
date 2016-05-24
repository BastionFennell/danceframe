class Api::PreEventResource < JSONAPI::Resource
  attributes :todo_progress
  has_one :dance_frame
  has_one :event
  has_one :user
end
