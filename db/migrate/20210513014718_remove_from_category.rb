class RemoveFromCategory < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :body
    remove_column :categories, :position
    remove_column :categories, :image
    drop_table :images
  end
end
