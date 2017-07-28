class CreateRides < ActiveRecord::Migration[5.1]
  def change
    create_table :rides do |t|
      t.string :driver_name
      t.string :make
      t.string :model

      t.timestamps
    end
  end
end
