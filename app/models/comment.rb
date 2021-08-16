class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :room

  after_create_commit { RoomBroadcastJob.perform_later self }
end
