class Api::RoutesController < ApplicationController
  def index
    @routes = Route.all
    render "api/routes/index"
  end

  def create
    @route = Route.new(route_params)

    if @route.save
      render "api/routes/show"
    else
      render json: @route.errors.full_messages, status: 422
    end
  end

  def show
    @route = Route.find(params[:id])
  end

  def destroy
    @route = Route.find(params[:id])
  end

  private
  def route_params
    params.require(:route).permit(
      :name,
      :description,
      :author_id,
      :distance,
      :coordinates
    )
  end
end
