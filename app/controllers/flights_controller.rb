class FlightsController < ApplicationController

  def new
  end

  def index
    unless params[:search].nil?
      @results = Flight.where(from_airport: params[:search][:departing_airport],
                              to_airport: params[:search][:arriving_airport],
                              flight_date: DateTime.parse(params[:search][:flight_date])).all
      @passengers = params[:search][:passengers]                              
    end
    @flights = Flight.all
    @flight = Flight.find_by(params[:id])
  end

  def show
    @flight = Flight.find(params[:id])
  end

  def create
  end

  def destroy
  end

  private
    def flights_params
      params.require(:flight).permit(:search)
    end
end
