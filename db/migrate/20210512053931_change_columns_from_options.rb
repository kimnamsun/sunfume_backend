class ChangeColumnsFromOptions < ActiveRecord::Migration[6.0]
  def change
    remove_column :options, :stock
    add_column :options, :price, :integer
  end
end
