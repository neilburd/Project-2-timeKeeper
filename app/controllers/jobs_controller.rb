class JobsController < ApplicationController

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params[:job])
  end
  

end
