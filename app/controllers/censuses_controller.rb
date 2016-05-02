require 'will_paginate/array'

class CensusesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @censuses_active = Census.where(active: true).paginate(
      page: params[:active], per_page: 1)
    @censuses_closed = Census.where(active: false).paginate(
      page: params[:ended], per_page: 1)
    @opinion   = Opinion.new
    @comment   = Comment.new
  end

  def new
    @census    = Census.new
    @durations = Census::DURATIONS
  end

  def show
    @census  = Census.find(params[:id])
    @opinion = Opinion.new
  end

  def create
    census          = Census.new(census_params)
    census.user     = current_user
    duration_key    = params[:census][:duration]
    duration_value  = Census::DURATIONS[:"#{duration_key}"]
    census.end_time = Time.now + duration_value.hours
    census.active   = 1
    if census.save
      flash[:success] = 'Census Created!'
      redirect_to censuses_path
    else
      flash[:failure] = census.errors.full_messages
      flash[:failure] = '. Creation Failure'
      render new_census_path
    end
  end

  private

  def census_params
    params.require(:census).permit(:description, :option_01,
    :option_02, :option_03, :duration, :end_time)
  end
end
