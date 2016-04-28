class Api::CoverResource < JSONAPI::Resource
  attributes :offset_x, :offset_y, :source, :facebook_id
  has_one :event, class_name: "Event"
end
