class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.references :staff, foreign_key: true
      t.references :package, foreign_key: true
      t.timestamps
    end
  end
end
