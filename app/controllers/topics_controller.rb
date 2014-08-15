class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :new, :update, :destroy, :create]
  after_action  :add_visit_count, only: :show

  # GET /topics
  # GET /topics.json
  def index
    @category = Category.friendly.find(params[:category_id])
    @board = @category.boards.friendly.find(params[:board_id])
    @topics = @board.topics.all
  end

  # GET /topics/1
  # GET /topics/1.json
  def show
    @category = Category.friendly.find(params[:category_id])
    @board = set_board
    @topic = set_topic
		@comment = @topic.comments.build
    @vote = Voting.find_all_by_topic_id(params[:id])
    @voted_num = @vote.size
    @count_of_access = access_num_of_topic
  end

  # GET /topics/new
  def new
    @board = set_board
    @topic = @board.topics.build
  end

  # GET /topics/1/edit
  def edit
    @category = Category.friendly.find(params[:category_id])
    @board = set_board
    @topic = @board.topics.find(params[:id])
  end

  # POST /topics
  # POST /topics.json
  def create
    @category = Category.friendly.find(params[:category_id])
    @board = set_board
    @topic = @board.topics.new(topic_params)
    @topic.category_id = @category.id
    @topic.user_id = current_user.id

    respond_to do |format|
      if @topic.save
        format.html { redirect_to [@category, @board, @topic], notice: 'Topic was successfully created.' }
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
#    @category = Category.friendly.find(params[:category_id])
#    @board = set_board
#    @topic = @board.topics.find(params[:id])
#    @Topic.user_id = current_user.id
#    @topic.category_id = @category.id
#    @topic.board_id = @board.id

    respond_to do |format|
      if @topic.update_attributes(topic_params)
        format.html { redirect_to [@category, @board, @topic], notice: 'Topic was successfully updated.' }
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
    @topic = topic_params
    @topic.destroy

    respond_to do |format|
      format.html { redirect_to board_topics_url }
      format.json { head :no_content }
    end
  end

  def add_visit_count
    @visit = ahoy.visit_id
    @topic = set_topic
    TopicVisit.where(topic_id: @topic, visit_id: @visit).first_or_create
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @category = Category.friendly.find(params[:category_id])
      @board    = @category.boards.friendly.find(params[:board_id])
      @topic = @board.topics.find(params[:id])
    end

    def set_board
      @category = Category.friendly.find(params[:category_id])
      @board = @category.boards.friendly.find(params[:board_id])
    end

    def access_num_of_topic
      @topic = set_topic
      TopicVisit.where(topic_id: @topic.id).size
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:title, :name, :content, :board_id, :category_id, :user_id, :image, :tag_list, :visit_id, :clip)
    end
end
