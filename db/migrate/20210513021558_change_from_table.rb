class ChangeFromTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :line_items, :unit_price
    rename_column :line_items, :total, :total_price
    rename_column :options, :option_price, :add_price
    add_column :options, :stock, :integer
    rename_column :orders, :total, :total_price
  end
end
