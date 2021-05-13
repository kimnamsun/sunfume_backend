class RenameColumnsFromOptions < ActiveRecord::Migration[6.0]
  def change
    rename_column :options, :price, :option_price
  end
end
