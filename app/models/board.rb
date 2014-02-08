class Board < ActiveRecord::Base
	has_many :topics
	extend FriendlyId
	friendly_id :board_name


end
