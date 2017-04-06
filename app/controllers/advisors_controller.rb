class AdvisorsController < ApplicationController
  def index
    @advisors = Advisor.all
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
    advisor.save
    redirect_to '/advisors'
  end

  def destroy
    advisor = Advisor.find_by(id: params[:id])
    advisor.destroy
    redirect_to '/advisors'
  end
end
