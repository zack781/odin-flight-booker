class CreateArrivingFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :arriving_flights do |t|

      t.timestamps
    end
  end
end
