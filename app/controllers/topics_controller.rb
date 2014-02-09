class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  # GET /topics
  # GET /topics.json
  def index
    @board = Board.friendly.find(params[:board_id])
    @topics = @board.topics.all
  end

  # GET /topics/1
  # GET /topics/1.json
  def show
    @board = Board.friendly.find(params[:board_id])
    @topic = @board.topics.find(params[:id])
		@comment = @topic.comments.build
	end

  # GET /topics/new
  def new
    @board = Board.friendly.find(params[:board_id])
    @topic = @board.topics.build
  end

  # GET /topics/1/edit
  def edit
    @board = Board.friendly.find(params[:board_id])
    @topic = @board.topics.find(params[:id])
  end

  # POST /topics
  # POST /topics.json
  def create
    @board = Board.friendly.find(params[:board_id])
    @topic = @board.topics.create(topic_params)
#    @topic = Topic.new(topic_params)

    respond_to do |format|
      if @topic.save
        format.html { redirect_to [@board, @topic], notice: 'Topic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @topic }
      else
        format.html { render action: 'new' }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topics/1
  # PATCH/PUT /topics/1.json
  def update
    @board = Board.friendly.find(params[:board_id])
    @topic = @board.topics.find(params[:id])

    respond_to do |format|
      if @topic.update_attributes(topic_params)
        format.html { redirect_to [@board, @topic], notice: 'Topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.json
  def destroy
    @board = Board.friendly.find(params[:board_id])
    @topic = @board.topics.find(params[:id])
    @topic.destroy

    respond_to do |format|
      format.html { redirect_to board_topics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = Topic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:title, :name, :content)
    end
end
