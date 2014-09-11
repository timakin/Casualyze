class Comment < ActiveRecord::Base
	belongs_to :topic
  belongs_to :user
  belongs_to :category
  belongs_to :board
  validates :body, :board_id, :category_id, :topic_id, presence: true
end
