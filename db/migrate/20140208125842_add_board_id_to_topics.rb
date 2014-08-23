class AddBoardIdToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :board_id, :integer, :null => false, default: 0
  end
end
