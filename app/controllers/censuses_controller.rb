class CensusesController < ApplicationController
  def new
    @census = Census.new
  end

  def create
    params['census']
    census = Census.new(census_params)
      binding.pry
    if census.save
      flash[:success] = 'Census Created!'
      redirect_to root_path
    else
      flash[:failure] = census.errors.full_messages
      flash[:failure] = '. Creation Failure'
      render :new
    end
  end

  private

  def census_params
    params.require(:census).permit(:description, :option_01,
    :option_02, :option_03)
  end
end
