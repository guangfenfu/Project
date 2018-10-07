class CreateTaxes < ActiveRecord::Migration[5.2]
  def change
    create_table :taxes do |t|
      t.decimal :gst
      t.decimal :pst

      t.timestamps
    end
  end
end
