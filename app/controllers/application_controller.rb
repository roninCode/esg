class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_advisor
    @current_advisor ||= Advisor.find_by(id: session[:advisor_id]) if session[:advisor_id]
  end
  helper_method :current_advisor

  def current_client
    @current_client ||= Client.find_by(id: session[:client_id]) if session[:client_id]
  end
  helper_method :current_client

  # def invitation_accepted 
  #   @accepted_by_client = Invitation.where(status: "accepted")
  # end
  # helper_method :accepted_by_client
end
