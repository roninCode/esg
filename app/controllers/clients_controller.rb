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
  end

  def update
  end

  def destroy
  end
end
