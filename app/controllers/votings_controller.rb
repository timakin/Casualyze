class VotingsController < ApplicationController
	def vote_to_topic
		@user  = current_user.id
		@category = params[:category_id]
		@board = params[:board_id]
		@topic = params[:id]
		@vote = Voting.new(
			user_id: @user,
			topic_id: @topic
		)
		respond_to do |format|
			if @vote.save
				format.html { redirect_to category_board_topic_path(@category, @board, @topic) }
			else
				format.html { redirect_to root_path }
			end
		end
	end
end
