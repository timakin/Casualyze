class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name, :null => false, :default => ""
      t.text :body, :null => false
      t.integer :topic_id, :null => false

      t.timestamps
    end
		add_foreign_key :comments, :topics	
  end
end
