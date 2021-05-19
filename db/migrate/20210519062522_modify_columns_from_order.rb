class ModifyColumnsFromOrder < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :status
    add_column :orders, :status, :integer, :null => false, default: 2
  end
end
