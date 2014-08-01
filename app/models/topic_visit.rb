class TopicVisit < ActiveRecord::Base
	belongs_to :topic
	belongs_to :visit
end
