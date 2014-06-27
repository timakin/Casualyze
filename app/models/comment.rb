class Comment < ActiveRecord::Base
	belongs_to :topic
  belongs_to :user
  belongs_to :category
  belongs_to :board
  validates :title, :content, :board_id, presence: true
end
