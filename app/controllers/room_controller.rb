class RoomController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @rooms = Room.all
    @room = Room.find(params['format'])
  end
end
