class RemoveColumnToProduct < ActiveRecord::Migration[6.1]
  def change
    remove_column(:products, :photos_url)
  end
end
