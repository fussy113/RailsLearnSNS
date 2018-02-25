class AddColumnsToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :create_user_id, :integer, nullable:false
  end
end
