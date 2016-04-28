class Api::FacebookEventsController < ApplicationController
  def show
    event = @graph.get_object(params[:id])
    json_api = {
      data: {
        type: "facebook-event",
        id: params[:id],
        attributes: event
      }
    }

    render json: json_api
  end
end
