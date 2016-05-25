class Api::DanceFramesController < JSONAPI::ResourceController
  def create
    frame = DanceFrame.create({
      event_id: params['data']['relationships']['event']['data']['id'],
      user_id: params['data']['relationships']['user']['data']['id']
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
