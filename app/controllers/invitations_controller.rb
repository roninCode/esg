class InvitationsController < ApplicationController
  def index
    @invitations = []
    Invitation.all.each do |invitation|
      if current_advisor && invitation.advisor_id == current_advisor.id
        @invitations << invitation
      elsif current_client && invitation.client_id == current_client.id
        @invitations << invitation
      end
    end
    render 'index.html.erb'
  end

  def show
    @invitation = Invitation.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    invitation = Invitation.new(
      advisor_id: current_advisor.id,
      client_id: params['client_id'],
      status: "pending"
    )

    is_client = false
    Client.all.each do |client|
      if client.id == params['client_id'].to_i
        is_client = true
      end
    end
    if is_client && invitation.save
      this_client = Client.find_by(id: params['client_id'])
      flash[:info] = "You sent an invitation to #{this_client.name}"
    else
      flash[:danger] = "This client does not exist."
    end
    redirect_to '/invitations'
  end

  def edit
    @invitation = Invitation.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @invitation = Invitation.find_by(id: params[:id])
    if @invitation.update(
      status: params[:status]
    )
      flash[:info] = "You just updated this invitation"
      redirect_to '/invitations'
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    invitation = Invitation.find_by(id: params[:id])
    if invitation.destroy
      flash[:danger] = "You just destroyed this invitation"
    end
    redirect_to '/invitations'
  end
end
