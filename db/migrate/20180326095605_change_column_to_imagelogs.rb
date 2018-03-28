class ChangeColumnToImagelogs < ActiveRecord::Migration[5.1]
  def change
    rename_column :imagelogs, :url , :image
  end
end
