class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  def create
    @category = Category.friendly.find(params[:comment][:category_id])
    @board    = @category.boards.friendly.find(params[:comment][:board_id])
    @topic    = @board.topics.find(params[:comment][:topic_id])
    @comment  = @topic.comments.new(comment_params)
    #@comment.user_id = current_user.id

    respond_to do |format|
      if @comment.save
        format.html { redirect_to [@category, @board, @topic], notice: 'Comment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comment }
      else
        format.html { redirect_to [@category, @board, @topic], notice: 'Comment Error' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:name, :body, :topic_id, :category_id, :board_id)
    end
end
