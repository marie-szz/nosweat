class ChangeColumnNamePhotos < ActiveRecord::Migration[6.1]
  def change
    rename_column(:products, :photo_url, :photos_url)
  end
end
