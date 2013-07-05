class RunsController < ApplicationController
  def index
    @runs = Run.all
  end

  def new
    @run = Run.new
    @run.distance = Distance.new
  end

  def create
    @run = Run.create(run_params)
    if @run.valid?
      redirect_to activities_path, notice: "#{@run.distance.nickname} logged!"
    else
      render action: :new
    end
  end

  private

  def run_params
    params.require(:run).permit(distance_attributes: [:value])
  end
end
