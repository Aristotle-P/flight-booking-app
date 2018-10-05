class FlightsController < ApplicationController

  def new
  end

  def index
    if params[:search]
      @flights = Flight.search(params[:search])
    else
      @flights = Flight.all
    end
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
