class AddCategoryIdToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :category_id, :integer, :null => false
  end
end
