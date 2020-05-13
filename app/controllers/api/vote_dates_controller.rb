class VoteDatesController < ApplicationController
  before_action :set_vote_date, only: [:show, :edit, :update, :destroy]

  # GET /vote_dates
  # GET /vote_dates.json
  def index
    @vote_dates = VoteDate.all
  end

  # GET /vote_dates/1
  # GET /vote_dates/1.json
  def show
  end

  # GET /vote_dates/new
  def new
    @vote_date = VoteDate.new
  end

  # GET /vote_dates/1/edit
  def edit
  end

  # POST /vote_dates
  # POST /vote_dates.json
  def create
    @vote_date = VoteDate.new(vote_date_params)

    respond_to do |format|
      if @vote_date.save
        format.html { redirect_to @vote_date, notice: 'Vote date was successfully created.' }
        format.json { render :show, status: :created, location: @vote_date }
      else
        format.html { render :new }
        format.json { render json: @vote_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vote_dates/1
  # PATCH/PUT /vote_dates/1.json
  def update
    respond_to do |format|
      if @vote_date.update(vote_date_params)
        format.html { redirect_to @vote_date, notice: 'Vote date was successfully updated.' }
        format.json { render :show, status: :ok, location: @vote_date }
      else
        format.html { render :edit }
        format.json { render json: @vote_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vote_dates/1
  # DELETE /vote_dates/1.json
  def destroy
    @vote_date.destroy
    respond_to do |format|
      format.html { redirect_to vote_dates_url, notice: 'Vote date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_vote_date
    @vote_date = VoteDate.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def vote_date_params
    params.fetch(:vote_date, {})
  end
end

