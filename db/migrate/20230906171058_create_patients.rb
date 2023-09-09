class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :mobile
      t.string :gender
      t.string :address
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
