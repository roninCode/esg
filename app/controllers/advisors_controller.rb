class AdvisorsController < ApplicationController
  def index
    @client_advisors = []
    Invitation.all.each do |invit|
      if invit.client_id == current_client.id
        @client_advisors << Advisor.find("#{invit.advisor_id}")
      end
    end
    @invitation = Invitation.where(client_id: current_client.id)
    render 'index.html.erb'
  end

  def show
    @advisor = Advisor.find_by(id: params[:id])
    @total_clients = Invitation.where(advisor_id: @advisor.id).where(status: "accepted").count
    @invitations = Invitation.where(advisor_id: @advisor.id)
    
    

    @clients = []
    @invitations.each do |invit|
      @clients << Client.find_by(id: invit.client_id)
    end
    if @clients[0]
      @client1 = @clients[0]
    end
    if @clients[1]
      @client2 = @clients[0]
    end
    if @clients[2]
      @client3 = @clients[2]
    end
    render 'show.html.erb'
  end

  def edit
    @advisor = Advisor.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @advisor = Advisor.find_by(id: params[:id])
    if @advisor.update(
      name: params[:name],
      company: params[:company],
      phone: params[:phone],
      email: params[:email],
      logo: params[:logo],
      tags: params[:tags],
      zip_code: params[:zip_code]
    )
      flash[:info] = "You just updated this advisor"
      redirect_to "/advisors/#{@advisor.id}"
    else
      render 'edit.html.erb'
    end
  end

  def new
    @advisor = Advisor.new
    render "new.html.erb"
  end  

  def create
    # response = Unirest.get("https://gist.githubusercontent.com/dryan/7486408/raw/dda158f44480f8c433dc8fd1db9c07ed9aadf989/valid-zips.json").body

    advisor = Advisor.new(
      name: params[:name],
      company: params[:company],
      phone: params[:phone],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      email: params[:email],
      logo: params[:logo],
      tags: params[:tags],
      zip_code: params[:zip_code]
    )
    # Code below goes in line 80 (if line below && advisor.save)
    # I don't have wifi and it's making a unirest call...stoping me from creating advisors.
    # response.include?(advisor.zip_code) &&
    if  advisor.save
      session[:advisor_id] = advisor.id
      flash[:info] = "Welcome to EthiCaptial!"
      redirect_to '/clients'
    else
      flash[:danger] = "Please fill out the entire form"
      redirect_to '/advisors/new'
    end
  end

  def destroy
    advisor = Advisor.find_by(id: params[:id])
    if advisor.destroy
      flash[:danger] = "You just destroyed this advisor"
    end
    redirect_to '/advisors'
  end

private
  def advisor_params
    params.require(:advisor).permit(:name, :logo)
  end

end
