class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "#{params['channel']}_#{params['room_id']}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ActionCable.server.broadcast "#{params['channel']}_#{params['room_id']}" , message: data['message']
    # Textlog.create(content: data['message'], sent_user: current_user, room] Room.find(params['room_id']))
  end
end
