class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :board_name, :null => false, :default => ""

      t.timestamps
    end
  end
end
