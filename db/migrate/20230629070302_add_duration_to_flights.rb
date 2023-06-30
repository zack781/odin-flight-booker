class AddDurationToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :duration, :string
  end
end
