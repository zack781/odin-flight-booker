class CreateDepartingFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :departing_flights do |t|

      t.timestamps
    end
  end
end
