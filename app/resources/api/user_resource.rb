class Api::UserResource < JSONAPI::Resource
  attributes :name, :uid, :image
end
