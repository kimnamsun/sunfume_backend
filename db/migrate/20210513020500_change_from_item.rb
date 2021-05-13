class ChangeFromItem < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :sale_price, :price
    remove_column :items, :images
    add_column :items, :images, :string, :null => false, default: [], array: true
    change_column :items, :category_id, :bigint, :null => false
  end
end
