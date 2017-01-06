class TimersController < ApplicationController
  before_action :set_timer, only: [:show, :edit, :update, :destroy]

  # GET /timers
  # GET /timers.json
  def index
    job = Job.find(params[:job_id])
    @timers = job.timers
  end

  # GET /timers/1
  # GET /timers/1.json
  def show
  end

  # GET /timers/new
  def new
    job = Job.find(params[:job_id])
    @timers = job.timers.build
  end

  # GET /timers/1/edit
  def edit
    job = Job.find(params[:job_id])
    @timers = job.timers.find(params[:id])
  end

  # POST /timers
  # POST /timers.json
  def create
    job = Job.find(params[:job_id])
    @timers = job.timers.create(timer_params)

    respond_to do |format|
      if @timers.save
        format.html { redirect_to @timers.job, notice: 'Timer was successfully created.' }
        format.json { render :show, status: :created, location: @timer }
      else
        format.html { render :new }
        format.json { render json: @timers.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timers/1
  # PATCH/PUT /timers/1.json
  def update
    job = Job.find(params[:job_id])
    @timers = job.timers.find(params[:id])

    respond_to do |format|
      if @timers.update_attributes(params[:timer])
        format.html { redirect_to @timesr, notice: 'Timer was successfully updated.' }
        format.json { render :show, status: :ok, location: @timers }
      else
        format.html { render :edit }
        format.json { render json: @timers.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timers/1
  # DELETE /timers/1.json
  def destroy
    job = Job.find(params[:job_id])
    @timers = job.timers.find(params[:id])

    @timers.destroy
    respond_to do |format|
      format.html { redirect_to timers_url, notice: 'Timer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timer
      job = Job.find(params[:job_id])
      @timers = job.timers.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def timer_params
      params.require(:timer).permit(:time, :description, :job_id)
    end
end