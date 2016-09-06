class Api::TripsController < ApplicationController
  def index
    @trips = Trip.all
    render "api/trips/index"
  end

  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      render "api/trips/show"
    else
      render json: @trip.errors.full_messages, status: 422
    end
  end

  def show

  end

  def destroy

  end

  private
  def trip_params
    params.require(:trip).permit(
      :title,
      :author_id,
      :route_id,
      :start_date,
      :end_date
    )
  end
end
