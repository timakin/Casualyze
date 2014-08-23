class AddCategoryIdToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :category_id, :integer, default: 0, :null => false
  end
end
