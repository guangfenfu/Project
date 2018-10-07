class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :brand, foreign_key: true
      t.string :name
      t.decimal :price
      t.string :image_link
      t.decimal :rating
      t.references :category, foreign_key: true
      t.references :color, foreign_key: true
      t.text :description
      t.references :currency, foreign_key: true

      t.timestamps
    end
  end
end
