class Api::DanceFrameResource < JSONAPI::Resource
  attributes :sort_id

  has_one :user
  has_one :event
  has_one :pre_event
end
