class CreateTopicVisits < ActiveRecord::Migration
  def change
    create_table :topic_visits do |t|
      t.integer :topic_id
      t.string :visit_id

      t.timestamps
    end
  end
end
