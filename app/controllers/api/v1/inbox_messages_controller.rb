class API::V1::InboxMessagesController < ApplicationController
  before_action :set_inbox_message, only: [:show, :edit, :update, :destroy]

  # GET /inbox_messages
  # GET /inbox_messages.json
  def index
    @inbox_messages = InboxMessage.all
  end

  # GET /inbox_messages/1
  # GET /inbox_messages/1.json
  def show
  end

  # GET /inbox_messages/new
  def new
    @inbox_message = InboxMessage.new
  end

  # GET /inbox_messages/1/edit
  def edit
  end

  # POST /inbox_messages
  # POST /inbox_messages.json
  def create
    @inbox_message = InboxMessage.new(inbox_message_params)

    respond_to do |format|
      if @inbox_message.save
        format.html { redirect_to @inbox_message, notice: 'Inbox message was successfully created.' }
        format.json { render :show, status: :created, location: @inbox_message }
      else
        format.html { render :new }
        format.json { render json: @inbox_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inbox_messages/1
  # PATCH/PUT /inbox_messages/1.json
  def update
    respond_to do |format|
      if @inbox_message.update(inbox_message_params)
        format.html { redirect_to @inbox_message, notice: 'Inbox message was successfully updated.' }
        format.json { render :show, status: :ok, location: @inbox_message }
      else
        format.html { render :edit }
        format.json { render json: @inbox_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inbox_messages/1
  # DELETE /inbox_messages/1.json
  def destroy
    @inbox_message.destroy
    respond_to do |format|
      format.html { redirect_to inbox_messages_url, notice: 'Inbox message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_inbox_message
    @inbox_message = InboxMessage.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def inbox_message_params
    params.fetch(:inbox_message, {})
  end
end

