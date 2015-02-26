class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :mlink
      t.string :slink
      t.string :sphoneus
      t.string :sphoneca

      t.timestamps null: false
    end
  end
end
