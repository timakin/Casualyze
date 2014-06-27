class Board < ActiveRecord::Base
	has_many :topics, :dependent => :destroy
  has_many :comments, :through => :topics, :dependent => :destroy
  validates :board_name, :category_id, presence: true
end
