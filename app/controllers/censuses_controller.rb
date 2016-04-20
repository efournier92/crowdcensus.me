class CensusesController < ApplicationController

  def index
    @censuses = Census.all
  end

  def new
    @census = Census.new
    @durations = ['1 Hour', '24 Hours', '72 Hours']
  end

  def show
    @census  = Census.find(params[:id])
    @opinion = Opinion.new
  end

  def create
    census = Census.new(census_params)
    census.user = current_user
    if census.save
      flash[:success] = 'Census Created!'
      redirect_to census_path(census)
    else
      flash[:failure] = census.errors.full_messages
      flash[:failure] = '. Creation Failure'
      render new_census_path
    end
  end

  private

  def census_params
    params.require(:census).permit(:description, :option_01,
    :option_02, :option_03, :duration)
  end
end
