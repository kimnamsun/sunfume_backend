class RenameColumnsFromLineitem < ActiveRecord::Migration[6.0]
  def change
    rename_column :line_items, :items_id, :item_id
  end
end
