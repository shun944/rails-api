class CreateShops < ActiveRecord::Migration[7.1]
  def change
    create_table :shops do |t|
      t.string :email
      t.string :shop_name
      t.string :pic

      t.timestamps
    end
  end
end
