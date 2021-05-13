class ChangeFromLineItemsAndOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :line_items, :items, foreign_key: true
    add_column :orders, :status, :string
  end
end
