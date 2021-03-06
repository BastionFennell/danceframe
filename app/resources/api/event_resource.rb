class Api::EventResource < JSONAPI::Resource
  attributes :name, :description, :facebook_id, :start_time, :end_time, :todo_list
  has_one :cover, class_name: "Cover", always_include_linkage_data: true
  has_many :dance_frames
end
