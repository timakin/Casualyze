class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title, :null => false, :default => ""
      t.text :content, :null => false, :default => nil
      t.attachment :clip

      t.timestamps
    end
  end
end
