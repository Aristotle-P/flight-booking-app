class BookingsController < ApplicationController

  def new
    @flight = Flight.find_by(id: params[:flight_selection][:flight])
    @passengers_number = params[:flight_selection][:passengers]
    @passengers = []
    @passengers_number.to_i.times do
      passenger = Passenger.create
      @passengers << passenger
    end
  end

  def create
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_selection => [:flight, :passengers])
    end
end
