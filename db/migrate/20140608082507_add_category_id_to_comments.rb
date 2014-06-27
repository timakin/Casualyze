class AddCategoryIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :category_id, :integer, :null => false
  end
end
