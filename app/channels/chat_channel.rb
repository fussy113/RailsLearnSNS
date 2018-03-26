class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "#{params['channel']}_#{params['room_id']}"
    stream_for current_user
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Textlog.create(content: data['message'], user_id: current_user.id ,room_id: params['room_id'])
    ActionCable.server.broadcast "#{params['channel']}_#{params['room_id']}" , {name: current_user.name ,message: data['message']}
  end
end
