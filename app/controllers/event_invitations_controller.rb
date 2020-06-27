class EventInvitationsController < ApplicationController
  before_action :set_event_invitation, only: [:show, :edit, :update, :destroy]

  # GET /event_invitations
  # GET /event_invitations.json
  def index
    @event_invitations = EventInvitation.all
  end

  # GET /event_invitations/1
  # GET /event_invitations/1.json
  def show
    @eiu = User.find(current_user.id)
    @ulist = User.joins(:event_invitations).where(event_invitations:  {id:params[:id]})
    @total = Event.joins(:event_invitations).where(event_invitations: {id:params[:id]}).last
  end

  # GET /event_invitations/new
  def new
    @test = params[:id]
    # @eie = Event.find(id: params[:id])
    @eiu = User.find(current_user.id)
    @event_invitation = EventInvitation.new
  end

  # GET /event_invitations/1/edit
  def edit
  end

  # POST /event_invitations
  # POST /event_invitations.json
  def create
    @event_invitation = EventInvitation.new(event_invitation_params)

    respond_to do |format|
      if @event_invitation.save
        format.html { redirect_to @event_invitation, notice: 'Event invitation was successfully accepted.' }
        format.json { render :show, status: :created, location: @event_invitation }
      else
        format.html { render :new }
        format.json { render json: @event_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_invitations/1
  # PATCH/PUT /event_invitations/1.json
  def update
    respond_to do |format|
      if @event_invitation.update(event_invitation_params)
        format.html { redirect_to @event_invitation, notice: 'Event invitation was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_invitation }
      else
        format.html { render :edit }
        format.json { render json: @event_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_invitations/1
  # DELETE /event_invitations/1.json
  def destroy
    @event_invitation.destroy
    respond_to do |format|
      format.html { redirect_to event_invitations_url, notice: 'Event invitation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_invitation
      @event_invitation = EventInvitation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_invitation_params
      params.fetch(:event_invitation, {}).permit(:user_id,:event_id)
    end
end
