class OpinionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def new
    @opinion = Opinion.new
    @census  =
    @choices = [
      @census.option_01,
      @census.option_02,
      @census.option_03
    ]
  end

  def create
    opinion = Opinion.new(opinion_params)

    opinion.user = current_user
    opinion.census   = Census.find(params[:census_id])
    if opinion.save
      flash[:success] = 'Opinion Cast!'
      redirect_to censuses_path
    else
      flash[:failure] = @opinion.errors.full_messages
      flash[:failure] = '. OOPS!'
      redirect_to censuses_path
    end
  end

  private

  def opinion_params
    params.require(:opinion).permit(:chosen_option) unless nil
  end
end
