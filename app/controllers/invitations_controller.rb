class InvitationsController < ApplicationController
  def index
    @invitations = Invitation.all
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
      advisor_id: params['advisor_id'],
      client_id: params['client_id'],
      status: params['status']
    )
    invitation.save
    redirect_to '/invitations'
  end

  def edit
    @invitation = Invitation.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @invitation = Invitation.find_by(id: params[:id])
    if @invitation.update(
      advisor_id: params[:advisor_id],
      client_id: params[:client_id],
      status: params[:status]
    )
      redirect_to '/invitations'
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    invitation = Invitation.find_by(id: params[:id])
    invitation.destroy
    redirect_to '/invitations'
  end
end
