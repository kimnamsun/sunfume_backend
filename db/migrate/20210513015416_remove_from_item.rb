class RemoveFromItem < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :list_price 
    remove_column :items, :image
    remove_column :items, :reviews_average
    remove_column :items, :view_count
    remove_column :items, :address2
    remove_column :items, :address1
    remove_column :items, :start_at
    remove_column :items, :end_at
    remove_column :items, :_type
    remove_column :items, :lat
    remove_column :items, :lng
    rename_column :items, :video, :images 
    rename_column :items, :reviews_count, :stock 
    rename_column :items, :zipcode, :capacity 
  end
end
