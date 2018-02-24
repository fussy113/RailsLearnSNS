class CreateTextlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :textlogs do |t|
      t.integer :room_id
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end
end
