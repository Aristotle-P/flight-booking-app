class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"

  def flight_date_formatted
    flight_date.strftime("%m/%d/%Y")
  end
end