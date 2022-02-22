class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :sport_category
      t.string :name
      t.integer :price
      t.string :description
      t.string :location
      t.string :quality
      t.string :photo_url
      t.boolean :delivery
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
