class ChangeColumnsToImagelogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :imagelogs , :room_id
    remove_column :imagelogs , :user_id
    remove_column :imagelogs , :comment
    add_column :imagelogs , :textlog_id, :integer
  end
end
