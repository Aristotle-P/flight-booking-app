class AddFlightDateToFlight < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :flight_date, :datetime
  end
end
