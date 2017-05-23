
class ClientsController < ApplicationController
  def index
    @advisor_clients = []
    Invitation.all.each do |invit|
      if invit.advisor_id == current_advisor.id
        @advisor_clients << Client.find(invit.client_id) if invit.status == "accepted"
      end
    end
    render 'index.html.erb'
  end

  def show
    @client = Client.find_by(id: params[:id])
    @invitations = Invitation.where(client_id: @client.id)
    @advisors = []
    @is_clients_advisor = false
    if !current_client
      @invitations.each do |invit|
        if current_advisor.id == invit.advisor_id
          @is_clients_advisor = true
        end
      end
    end
    @invitations.each do |invit|
      @advisors << Advisor.find_by(id: invit.advisor_id)
    end
    if @advisors[0]
      @advis1 = @advisors[0]
    end
    if @advisors[1]
      @advis2 = @advisors[1]
    end
    if @advisors[2]
      @advis3 = @advisors[2]
    end

    render 'show.html.erb'
  end

  def new
    @client = Client.new
    render 'new.html.erb'
  end

  def create
    client = Client.new(
      name: params[:name],
      email: params[:email],
      phone: params[:phone],
      risk_tolerance: params[:risk_tolerance],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if client.save
      session[:client_id] = client.id
      flash[:info] = "Welcome to EthiCapital!"
      redirect_to "/advisors"
    else
      flash[:danger] = "Please fill out all fields"
      redirect_to '/clients/new' 
    end
  end

  def edit
    @client = Client.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @client = Client.find_by(id: params[:id])
    if @client.update(
      name: params[:name],
      email: params[:email],
      phone: params[:phone],
      risk_tolerance: params[:risk_tolerance]
    )
      flash[:info] = "You just updated this client"
      redirect_to "/clients/#{@client.id}"
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    client = Client.find_by(id: params[:id])
    if client.destroy
      flash[:danger] = "You destroyed this client"
    end
    redirect_to '/clients'
  end
end
