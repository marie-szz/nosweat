class RemoveLocationToProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :location, :string
  end
end
