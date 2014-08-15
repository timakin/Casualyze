class Board < ActiveRecord::Base
	extend FriendlyId
	friendly_id :board_name, use: [:slugged, :finders]

	has_many :topics, :dependent => :destroy
  has_many :comments, :through => :topics, :dependent => :destroy
  validates :board_name, :category_id, presence: true
end
