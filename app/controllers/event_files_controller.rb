class EventFilesController < ApplicationController
  before_action :set_event_file, only: [:show, :edit, :update, :destroy]

  # GET /event_files
  # GET /event_files.json
  def index
    @event_files = EventFile.all
  end

  # GET /event_files/1
  # GET /event_files/1.json
  def show
  end

  # GET /event_files/new
  def new
    @event_file = EventFile.new
  end

  # GET /event_files/1/edit
  def edit
  end

  # POST /event_files
  # POST /event_files.json
  def create
    @event_file = EventFile.new(event_file_params)

    respond_to do |format|
      if @event_file.save
        format.html { redirect_to @event_file, notice: 'Event file was successfully created.' }
        format.json { render :show, status: :created, location: @event_file }
      else
        format.html { render :new }
        format.json { render json: @event_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_files/1
  # PATCH/PUT /event_files/1.json
  def update
    respond_to do |format|
      if @event_file.update(event_file_params)
        format.html { redirect_to @event_file, notice: 'Event file was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_file }
      else
        format.html { render :edit }
        format.json { render json: @event_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_files/1
  # DELETE /event_files/1.json
  def destroy
    @event_file.destroy
    respond_to do |format|
      format.html { redirect_to event_files_url, notice: 'Event file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_file
      @event_file = EventFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_file_params
      params.fetch(:event_file, {})
    end
end
