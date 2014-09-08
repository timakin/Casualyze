class HomeController < ApplicationController
  def index
  	@boards = Board.all
  	@popular_topics = Topic.joins(:topic_visits)
  												 .group('topic_visits.topic_id')
  												 .order("count(topic_visits.topic_id) desc")
  												 .limit(5)
  	@latest_topics 	= Topic.all(limit: 5, order: 'created_at desc')
  end
end
