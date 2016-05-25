class Api::DanceFramesController < JSONAPI::ResourceController
  def create
    event = Event.find(params['data']['relationships']['event']['data']['id'])

    frame = DanceFrame.create({
      event_id: event,
      user_id: params['data']['relationships']['user']['data']['id'],
      sort_id: event.start_time
    });

    frame.save

    pre_event = PreEvent.new({
      dance_frame: frame,
      todo_progress: []
    })

    pre_event.save
    frame.pre_event = pre_event
    frame.save

    frame_resources_json = JSONAPI::ResourceSerializer.new(Api::DanceFrameResource).serialize_to_hash(Api::DanceFrameResource.new(frame, nil))
    render json: frame_resources_json
  end
end
