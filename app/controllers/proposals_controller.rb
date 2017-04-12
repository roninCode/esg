class ProposalsController < ApplicationController
  def index
    @proposals = []
    Proposal.all.each do |proposal|
      if current_client && proposal.client_id == current_client.id
        @proposals << Proposal.find_by(client_id: "#{current_client.id}")
      elsif current_advisor && proposal.advisor_id == current_advisor.id
        @proposals << Proposal.find_by(advisor_id: "#{current_advisor.id}")
      end
    end
    render 'index.html.erb'
  end

  def show
    @proposal = Proposal.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @proposal = Proposal.new(
    risk_model_id: params['risk_model_id'],
    advisor_id: params['advisor_id'],
    client_id: params['client_id'],
    invitation_id: params['invitation_id'],
    status: params['status']
    )
    if @proposal.save
      flash[:info] = "You just created a new Proposal"
    end
    redirect_to "/proposals"
  end

  def edit
    @proposal = Proposal.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @proposal = Proposal.find_by(id: params[:id])
    if @proposal.update(
      risk_model_id: params['risk_model_id'],
      advisor_id: params['advisor_id'],
      client_id: params['client_id'],
      invitation_id: params['invitation_id'],
      status: params['status']
    )
    flash[:info] = "You just updated this Proposal"
    redirect_to "/proposals/#{@proposal.id}"
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    @proposal = Proposal.find_by(id: params[:id])
    if @proposal.destroy
      flash[:danger] = "You just destroyed this Proposal"
    end
    redirect_to '/proposals'
  end
end
