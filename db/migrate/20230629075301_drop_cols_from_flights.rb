class DropColsFromFlights < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :arrival_airport_id
    remove_column :flights, :departure_airport_id
  end
end
