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
      redirect_to runs_path, notice: notice
    else
      render action: :new
    end
  end

  private

  def run_params
    params.require(:run).permit(:duration, distance_attributes: [:value])
  end

  def notice
    if @run.duration.present?
      "#{@run.distance.nickname} logged! You did it in #{@run.duration}!"
    else
      "#{@run.distance.nickname} logged!"
    end
  end
end
