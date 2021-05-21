class RenameColumnsFromOrders < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :address, :address1
    rename_column :orders, :receiver_name, :name
    rename_column :orders, :receiver_phone, :phone
  end
end
