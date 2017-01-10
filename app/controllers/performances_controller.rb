class PerformancesController < ApplicationController

  before_action :set_performance, only: [:show, :edit, :update, :destroy]

  def index
    @performances = Performance.all
  end

  def new
    @performance = Performance.new
  end

  def create
    @performance = Performance.new(performance_params)
    @performance.save
    redirect_to performance_path(@performance)
  end

  def show
  end

  def edit
  end

  def update
    @performance.update(performance_params)
    redirect_to performance_path(@performance)
  end

  def destroy
    @performance.destroy
    redirect_to performances_path
  end

  private


  def set_performance
    @performance = Performance.find(params[:id])
  end

  def performance_params
    params.require(:performance).permit(:perf_price, :facebook_event)
  end
end
