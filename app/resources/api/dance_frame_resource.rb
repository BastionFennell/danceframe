class Api::DanceFrameResource < JSONAPI::Resource
  has_one :user
  has_one :event
  has_one :pre_event
end
