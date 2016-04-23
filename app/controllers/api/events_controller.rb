class Api::EventsController < ApplicationController
  def show
    event = Event.where({facebook_id: params[:facebookId]}).take!
    json_api = {
      data: {
        type: "event",
        id: event.id,
        attributes: event
      }
    }

    render json: json_api
  end

  def create
    facebook_event = @graph.get_object(params[:data][:attributes]["facebook-id"])
    binding.pry
    event = Event.new({
      name: facebook_event["name"],
      description: facebook_event["description"],
      facebook_id: params[:data][:attributes]["facebook-id"]
    })

    binding.pry

    event.save();
  end
end
