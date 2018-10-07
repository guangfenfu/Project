class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :receiver
      t.references :province, foreign_key: true
      t.text :address_detail
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
