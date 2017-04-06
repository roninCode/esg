class ClientsController < ApplicationController
  def index
    @clients = Client.all
    render 'index.html.erb'
  end

  def show
    @client = Client.find_by(id: params[:id])
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
    client.save
    redirect_to '/clients' 
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
    client.destroy
    redirect_to '/clients'
  end
end
