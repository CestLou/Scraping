class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :day
      t.string :date
      t.string :artist
      t.string :venue
      t.string :price
      t.string :sale
      t.string :link
      t.string :age
      t.string :region

      t.timestamps null: false
    end
  end
end
