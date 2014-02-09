class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.integer :topic_id

      t.timestamps
    end
		add_foreign_key :comments, :topics	
  end
end
