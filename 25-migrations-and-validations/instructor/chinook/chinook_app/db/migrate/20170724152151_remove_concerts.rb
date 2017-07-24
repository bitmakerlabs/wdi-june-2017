class RemoveConcerts < ActiveRecord::Migration[5.1]
  def change
    drop_table :concerts
  end
end
