class CreatePackages < ActiveRecord::Migration[6.0]
  def change
    create_table :packages do |t|
      t.date    :delivery_date,       null: false
      t.date    :pickup_date,         null: false
      t.string  :invoice_number,      null: false
      t.integer :preferred_time_id,   null: false
      t.integer :delivery_area_id,    null: false
      t.integer :collection_area_id,  null: false
      t.integer :unit,                null: false
      t.references :staff,            foreign_key: true
      t.timestamps
    end
  end
end
