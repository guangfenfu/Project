class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.string :hex_value
      t.string :colour_name

      t.timestamps
    end
  end
end
