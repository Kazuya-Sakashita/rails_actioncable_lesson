class RoomBroadcastJob < ApplicationJob
  def perform(comment)
    ActionCable.server.broadcast "room_channel_#{comment.room_id}", comment: comment
  end
end
