class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"

  def self.search(search)
    joins(:from_airport).where("date LIKE ? or airports.name LIKE ?", "%#{search}%", "%#{search}%")
  end
end