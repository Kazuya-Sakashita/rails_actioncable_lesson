class CommentController < ApplicationController
  def create
    @room = Room.find(params['format'])
    @comment = Comment.new(content: params[:comment][:content], user_id: current_user.id,room_id: params[:room_id])
    @comment.save
    RoomChannel.broadcast_to @room, comment: @comment
  end
end
