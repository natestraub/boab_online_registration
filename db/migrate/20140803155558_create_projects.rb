class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :start_date
      t.string :end_date
      t.string :description
      t.string :address
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
