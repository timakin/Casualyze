class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :update, :destroy]

  # GET /boards
  # GET /boards.json
  def index
#    @category = Category.find(params[:category_id])
    @boards = Board.all
  end

  # GET /boards/1
  # GET /boards/1.json
  def show
    @category = Category.friendly.find(params[:category_id])
    @boards = @category.boards.friendly.find(params[:id])
  end

  # GET /boards/new
  def new
    @category = Category.friendly.find(params[:category_id])
    @board = @category.boards.friendly.new
  end

  # POST /boards
  # POST /boards.json
  def create
    @category = Category.friendly.find(params[:category_id])
    @board = @category.boards.friendly.new(board_params)

    respond_to do |format|
      if @board.save
        format.html { redirect_to [@category, @board], notice: 'Board was successfully created.' }
        format.json { render action: 'show', status: :created, location: @board }
      else
        format.html { render action: 'new' }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boards/1
  # PATCH/PUT /boards/1.json
  def update
    @category = Category.friendly.find(params[:category_id])
    respond_to do |format|
      if @category.boards.friendly.update(board_params)
        format.html { redirect_to [@category, @board], notice: 'Board was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boards/1
  # DELETE /boards/1.json
  def destroy
    @category = Category.friendly.find(params[:category_id])
    @board = @category.boards.friendly.find(params[:id])
    @board.destroy
    respond_to do |format|
      format.html { redirect_to category_boards_url(@category) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board
      @category = Category.find(params[:category_id])
      @board = @category.boards.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def board_params
      params.require(:board).permit(:board_name)
    end
end
