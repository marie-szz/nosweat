class ChangeSizeToProducts < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :size, :string
  end
end
