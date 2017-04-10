class SessionsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    advisor = Advisor.find_by(email: params[:email])
    client = Client.find_by(email: params[:email])

    if advisor && advisor.authenticate(params[:password])
      session[:advisor_id] = advisor.id
      flash[:success] = 'Successfully logged in!'
      redirect_to '/advisors'
    elsif client && client.authenticate(params[:password])
      session[:client_id] = client.id
      flash[:success] = 'Successfully logged in!'
      redirect_to '/clients'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/login'
    end
  end

  def destroy
    session[:advisor_id] = nil
    flash[:success] = 'Successfully logged out!'
    session[:client_id] = nil
    flash[:success] = 'Successfully logged out!'

    redirect_to '/login'
  end

  def signup

  end
end
