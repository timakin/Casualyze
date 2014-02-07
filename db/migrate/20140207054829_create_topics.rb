class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
