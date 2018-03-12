class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name, :null=>false
      t.string :description
      t.string :password
      t.timestamps
    end
  end
end
