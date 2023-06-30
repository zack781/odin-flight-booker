class AddDateTimeAndDurationToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :start_datetime, :datetime
    add_column :flights, :duration, :time
  end
end
