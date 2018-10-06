class FlightsController < ApplicationController

  def new
  end

  def index
    @flights = Flight.all
    @airports = Airport.all
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
