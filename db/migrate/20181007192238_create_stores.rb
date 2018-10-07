class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.decimal :longitude
      t.decimal :laitude

      t.timestamps
    end
  end
end
