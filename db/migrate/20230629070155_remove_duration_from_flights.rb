class RemoveDurationFromFlights < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :duration
  end
end
