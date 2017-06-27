class ProposalsController < ApplicationController
  def index
    @proposals = []
    Proposal.all.each do |proposal|
      if (current_advisor && proposal.advisor_id == current_advisor.id)
        @proposals << proposal
      elsif (current_client && proposal.client_id == current_client.id)
        @proposals << proposal
      end        
    end
    render 'index.html.erb'
  end

  def show_esign
    @proposal = Proposal.find_by(id: params[:id])
    @risk_model = RiskModel.find_by(id: @proposal.risk_model_id)
    @advisor = Advisor.find_by(id: @proposal.advisor_id)
    @client = Client.find_by(id: @proposal.client_id)
    render 'show.esign.html.erb'
  end

  def show
    @proposal = Proposal.find_by(id: params[:id])
    @risk_model = RiskModel.find_by(id: @proposal.risk_model_id)
    @advisor = Advisor.find_by(id: @proposal.advisor_id)
    @client = Client.find_by(id: @proposal.client_id)
    if @proposal.status != "signed"
      respond_to do |format|
        format.html      
        format.pdf do
          render pdf: "ethicapital_proposal",
                 template: "proposals/show.pdf.erb",
                 locals: {:proposal => @proposal}
        end
      end
    else
      # pdf_filename = File.join(Rails.root, "/public/#{@proposal.pdf}") 
      # <--- This points to ActiveRecord
      # pdf_filename = File.join("https://s3.amazonaws.com/ethicapital.herokuapp.com/#{@proposal.pdf.path}") # <--- This points to AWS SC
      # send_file(pdf_filename, :filename => "#{@proposal.pdf}", :type => "application/pdf")
      redirect_to "https://s3.amazonaws.com/ethicapital.herokuapp.com/#{@proposal.pdf.path}"
    end  
  end

  def new
    render 'new.html.erb'
  end

  def create
    @proposal = Proposal.new(
    risk_model_id: params['risk_model_id'],
    advisor_id: params['advisor_id'],
    client_id: params['client_id'],
    status: params['status'],
    pdf: params['pdf']
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
      status: params['status'],
      pdf: params['pdf']
    )
      if @proposal.pdf != "" && @proposal.status != "signed"
        @proposal.update(
          status: "signed"
        )
      end
      flash[:info] = "You just uploaded your proposal!"
      redirect_to "/proposals"
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
