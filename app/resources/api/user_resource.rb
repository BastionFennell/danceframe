class Api::UserResource < JSONAPI::Resource
  attributes :name, :uid, :image
  has_many :dance_frames, always_include_linkage_data: true
end
