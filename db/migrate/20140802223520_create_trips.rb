class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.string :country
      t.string :address
      t.string :city
      t.string :start_date
      t.string :end_date
      t.string :description

      t.timestamps
    end
  end
end
