class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat:#{params['room_id']}"
    stream_for current_user
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
