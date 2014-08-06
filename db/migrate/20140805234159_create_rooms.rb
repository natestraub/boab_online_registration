class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :description
      t.integer :min_people
      t.integer :max_people
      t.decimal :cost
      t.references :trip, index: true

      t.timestamps
    end
  end
end
