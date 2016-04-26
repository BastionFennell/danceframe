class Api::UsersController < ApplicationController
  include JSONAPI::ActsAsResourceController

  def show
    if params[:id] == "me" && current_user
      test = JSONAPI::ResourceSerializer.new(Api::UserResource).serialize_to_hash(Api::UserResource.new(current_user, nil))
      render json: test
    else
      super
    end
  end
end
