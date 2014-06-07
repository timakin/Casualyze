class Board < ActiveRecord::Base
	has_many :topics
	extend FriendlyId
	friendly_id :board_name

	ActiveAdmin.register Board do
		permit_params :board_name
	end
end
