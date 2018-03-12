class CreateImagelogs < ActiveRecord::Migration[5.1]
  def change
    create_table :imagelogs do |t|
      t.integer :room_id
      t.integer :user_id
      t.string :url
      t.string :comment

      t.timestamps
    end
  end
end
