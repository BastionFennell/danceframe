class Api::EventsController < ApplicationController
  include JSONAPI::ActsAsResourceController
  def index
    if params[:upcoming]
      event = Event.where('start_time >= :date', date: Date.today).order('start_time ASC').take(3)
      event_resources = event.map{ |e| Api::EventResource.new(e, nil)}
      event_resources_json = JSONAPI::ResourceSerializer.new(Api::EventResource).serialize_to_hash(event_resources)
      render json: event_resources_json
    else
      super
    end
  end

  def create
    p "======================"
    p "======================"
    p "======================"
    p "======================"
    p "======================"
    p "======================"
    p "======================"
    p "======================"
    facebook_event = @graph.get_object(params[:data][:attributes]["facebook-id"], {fields: ['name', 'description', 'end_time', 'start_time', 'cover']})
    event = Event.new({
      name: facebook_event["name"],
      description: facebook_event["description"],
      facebook_id: params[:data][:attributes]["facebook-id"],
      start_time: facebook_event["start_time"],
      end_time: facebook_event["end_time"]
    })

    event.save();

    cover = Cover.new({
      offset_x: facebook_event['cover']['offset_x'],
      offset_y: facebook_event['cover']['offset_y'],
      source: facebook_event['cover']['source'],
      facebook_id: facebook_event['cover']['id'],
      event: event
    })
    cover.save();

    event.cover = cover;
    event.save();

    head :ok
  end
end
