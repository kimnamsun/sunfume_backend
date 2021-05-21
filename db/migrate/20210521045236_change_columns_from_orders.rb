class ChangeColumnsFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :zipcode
    remove_column :orders, :address2
    rename_column :orders, :address1, :address
  end
end
