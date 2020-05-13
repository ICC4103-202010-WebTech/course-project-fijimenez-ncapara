class OrganizationFilesController < ApplicationController
  before_action :set_organization_file, only: [:show, :edit, :update, :destroy]

  # GET /organization_files
  # GET /organization_files.json
  def index
    @organization_files = OrganizationFile.all
  end

  # GET /organization_files/1
  # GET /organization_files/1.json
  def show
  end

  # GET /organization_files/new
  def new
    @organization_file = OrganizationFile.new
  end

  # GET /organization_files/1/edit
  def edit
  end

  # POST /organization_files
  # POST /organization_files.json
  def create
    @organization_file = OrganizationFile.new(organization_file_params)

    respond_to do |format|
      if @organization_file.save
        format.html { redirect_to @organization_file, notice: 'Organization file was successfully created.' }
        format.json { render :show, status: :created, location: @organization_file }
      else
        format.html { render :new }
        format.json { render json: @organization_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_files/1
  # PATCH/PUT /organization_files/1.json
  def update
    respond_to do |format|
      if @organization_file.update(organization_file_params)
        format.html { redirect_to @organization_file, notice: 'Organization file was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization_file }
      else
        format.html { render :edit }
        format.json { render json: @organization_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_files/1
  # DELETE /organization_files/1.json
  def destroy
    @organization_file.destroy
    respond_to do |format|
      format.html { redirect_to organization_files_url, notice: 'Organization file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_organization_file
    @organization_file = OrganizationFile.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def organization_file_params
    params.fetch(:organization_file, {})
  end
end

