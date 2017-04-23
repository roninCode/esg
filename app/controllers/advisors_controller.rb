class AdvisorsController < ApplicationController
  def index
    @client_advisors = []
    Invitation.all.each do |invit|
      if invit.client_id == current_client.id
        @client_advisors << Advisor.find("#{invit.advisor_id}")
      end
    end
    render 'index.html.erb'
  end

  def show
    @advisor = Advisor.find_by(id: params[:id])
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
        logo: params[:logo]
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
    advisor = Advisor.new(
      name: params[:name],
      company: params[:company],
      phone: params[:phone],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      email: params[:email],
      logo: params[:logo]
    )
    if advisor.save
      session[:advisor_id] = advisor.id
      flash[:info] = "You just created a new advisor"
    end
    redirect_to '/clients'
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
