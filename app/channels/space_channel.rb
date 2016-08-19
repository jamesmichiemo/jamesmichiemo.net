# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class SpaceChannel < ApplicationCable::Channel
  def subscribed
    stream_from "space_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def curate(data)
    ActionCable.server.broadcast 'space_channel', message: data['message']
  end
end
